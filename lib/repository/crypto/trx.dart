import 'dart:convert';
import 'dart:ffi';
import 'dart:math';
import 'dart:typed_data';
import 'package:bip32/bip32.dart' as bip32;
import 'package:bip32/src/utils/ecurve.dart' as ecc;
import 'package:bip39/bip39.dart' as bip39;
import 'package:fixnum/fixnum.dart';
import 'package:flutter/foundation.dart';
import 'package:hex/hex.dart';
import 'package:fast_base58/fast_base58.dart' as b58;
import 'package:j8coffe/repository/crypto/transaction_data.dart';
import 'package:j8coffe/repository/proto/core/Tron.pb.dart';
import 'package:j8coffe/presentation/components/tx_adapter.dart';
import 'package:pointycastle/digests/keccak.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:pointycastle/ecc/curves/secp256k1.dart';
import 'package:pointycastle/macs/hmac.dart';
import 'package:pointycastle/signers/ecdsa_signer.dart';
import '../proto/api/api.pbgrpc.dart' as api;
import '../proto/core/contract/balance_contract.pb.dart' as bc;
import '../proto/core/Tron.pb.dart' as trx;
import 'package:grpc/grpc.dart' as grpc;
import 'package:pointycastle/pointycastle.dart';
import 'package:convert/convert.dart';
import 'package:collection/collection.dart' show ListEquality;
import 'package:bip32/src/utils/ecurve.dart' as ecurve;
import 'package:http/http.dart' as http;

final ECDomainParameters params = ECCurve_secp256k1();
final BigInt _halfCurveOrder = params.n ~/ BigInt.two;

class SendResult {
  bool success = false;
  String hash = "";

  SendResult(success, hash) {
    this.success = success;
    this.hash = hash;
  }
}

String getVaultPath(int id) {
  return "m/44'/195'/0'/0/" + id.toString();
}

bool validateAddress(String addr) {
  try {
    var addrBytes = Uint8List.fromList(b58.Base58Decode(addr));
    var checksum = _sha2(_sha2(addrBytes.sublist(0, 21)));
    var givenChecksum = addrBytes.sublist(addrBytes.length - 4);
    var calcChecksum = checksum.sublist(0, 4);
    return (listEquals(calcChecksum.toList(), givenChecksum.toList()));
  } catch (e) {
    return false;
  }
}

class TrxAccount {
  final _channel = new grpc.ClientChannel('grpc.trongrid.io',
      port: 50051,
      options:
          grpc.ChannelOptions(credentials: grpc.ChannelCredentials.insecure()));
  late Uint8List _privateKey;
  late Uint8List _pubKey;
  late String _addr;
  late Account _acc;

  TrxAccount(mnemonic, path) {
    var seed = bip39.mnemonicToSeed(mnemonic);

    bip32.BIP32 node = bip32.BIP32.fromSeed(seed);
    bip32.BIP32 child = node.derivePath(path);
    this._privateKey = child.privateKey!;
    this._pubKey = ecc.pointFromScalar(this._privateKey, false)!;

    var pubkHash = _keccak(this._pubKey.sublist(1));
    Uint8List trxPrefix = Uint8List.fromList([0x41]);
    var b = BytesBuilder();

    b.add(trxPrefix);
    b.add(pubkHash.sublist(pubkHash.length - 20));
    var checksum = _sha2(_sha2(b.toBytes()));
    b.add(checksum.sublist(0, 4));

    this._addr = b58.Base58Encode(b.toBytes());

    getAccount();
  }

  Uint8List getPublic() {
    return this._pubKey;
  }

  String getAddr() {
    return this._addr;
  }

  Future<Account> getAccount() async {
    var ctx = api.WalletClient(_channel);
    var request = new trx.Account();
    request.address = (b58.Base58Decode(this._addr)).sublist(0, 21);
    var response = await ctx.getAccount(request);
    this._acc = response;
    return response;
  }

  Future<double> getBalance() async {
    this._acc = await getAccount();
    return this._acc.balance.toDouble();
  }

  Future<List<TransactionData>> getTxList() async {
    final response = await http.get(Uri.parse(
        'https://apilist.tronscan.org/api/transaction?sort=-timestamp&count=true&limit=20&start=0&address=' +
            this._addr));

    var txList = List<TransactionData>.empty(growable: true);

    if (response.statusCode == 200) {
      var txData = (jsonDecode(response.body)["data"] as List);
      txData = txData.sublist(0, min(10, txData.length));

      for (var i = 0; i < txData.length; i++) {
        var tx = TransactionData.fromJson(txData[i]);

        if ((tx.from == this._addr) && (tx.amount != null)) {
          tx.amount = (-tx.amount!);
        }

        if (tx.token != null) {
          final response = await http.get(Uri.parse(
              'https://apilist.tronscan.org/api/transaction-info?hash=' +
                  tx.hash));

          var resJson = (jsonDecode(response.body) as Map<String, dynamic>);
          tx.symbol = resJson["trc20TransferInfo"][0]["symbol"];
          tx.amount = int.parse(
              resJson["trc20TransferInfo"][0]["amount_str"] as String);
        }

        txList.add(tx);
      }
    }

    return txList;
  }

  Future<SendResult> send(String to, int amount) async {
    var ctx = api.WalletClient(_channel);

    var tx = await createTx(ctx, this._addr, to, amount);
    tx = signTx(tx);

    var ret = await ctx.broadcastTransaction(tx);
    if (ret.code.value != api.Return_response_code.SUCCESS.value) {
      return SendResult(false, "");
    }

    final message = _sha2(tx.rawData.writeToBuffer());

    return SendResult(true, hex.encode(message));
  }

  Future<Transaction> simulateTx(String to, int amount) async {
    var ctx = api.WalletClient(_channel);

    var tx = await createTx(ctx, this._addr, to, amount);
    tx = signTx(tx);

    //var ret = await ctx.broadcastTransaction(tx);

    return tx;
  }

  Transaction signTx(Transaction tx) {
    final message = _sha2(tx.rawData.writeToBuffer());

    final digest = SHA256Digest();
    final signer = ECDSASigner(null, HMac(digest, 64));
    final key = ECPrivateKey(ecurve.fromBuffer(this._privateKey), params);

    signer.init(true, PrivateKeyParameter(key));
    var sig = signer.generateSignature(message) as ECSignature;

    if (sig.s.compareTo(_halfCurveOrder) > 0) {
      final canonicalisedS = params.n - sig.s;
      sig = ECSignature(sig.r, canonicalisedS);
    }

    int recoveryId = -1;
    for (var i = 0; i < 2; i++) {
      final k = _recoverPublicKeyFromSignature(i, sig.r, sig.s, message);
      if (ListEquality().equals(k, this._pubKey.sublist(1))) {
        recoveryId = i;
        break;
      }
    }

    if (recoveryId == -1) {
      throw Exception(
          'Could not construct a recoverable key. This should never happen');
    }
    var recId = new Uint8List(1);
    recId[0] = recoveryId;
    var b = BytesBuilder();
    b.add(ecurve.toBuffer(sig.r));
    b.add(ecurve.toBuffer(sig.s));
    b.add(recId);

    tx.signature.add(b.toBytes());

    return tx;
  }

  Future<Transaction> createTx(
      api.WalletClient ctx, String from, String to, int amount) async {
    var amt64 = new Int64(amount);

    var contract = bc.TransferContract();

    contract.amount = amt64;
    contract.ownerAddress = (b58.Base58Decode(from)).sublist(0, 21);
    contract.toAddress = (b58.Base58Decode(to)).sublist(0, 21);

    var txEx = await ctx.createTransaction2(contract);

    return txEx.transaction;
  }
}

Uint8List _keccak(Uint8List a, {int bits: 256}) {
  KeccakDigest kc = KeccakDigest(bits);
  return kc.process(a);
}

Uint8List _sha2(Uint8List a) {
  Digest sha2 = new Digest("SHA-256");
  return sha2.process(a);
}

Uint8List? _recoverPublicKeyFromSignature(
    int recId, BigInt r, BigInt s, Uint8List message) {
  final n = params.n;
  final i = BigInt.from(recId ~/ 2);
  final x = r + (i * n);

  //Parameter q of curve
  final prime = BigInt.parse(
      'fffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f',
      radix: 16);
  if (x.compareTo(prime) >= 0) return null;

  final R = _decompressKey(x, (recId & 1) == 1, params.curve);
  if (!(R! * n)!.isInfinity) return null;

  final e = ecurve.fromBuffer(message);

  final eInv = (BigInt.zero - e) % n;
  final rInv = r.modInverse(n);
  final srInv = (rInv * s) % n;
  final eInvrInv = (rInv * eInv) % n;

  final q = (params.G * eInvrInv)! + (R * srInv);

  final bytes = q!.getEncoded(false);
  return bytes.sublist(1);
}

ECPoint? _decompressKey(BigInt xBN, bool yBit, ECCurve c) {
  List<int> x9IntegerToBytes(BigInt s, int qLength) {
    final bytes = ecurve.toBuffer(s);

    if (qLength < bytes.length) {
      return bytes.sublist(0, bytes.length - qLength);
    } else if (qLength > bytes.length) {
      final tmp = List<int>.filled(qLength, 0);

      final offset = qLength - bytes.length;
      for (var i = 0; i < bytes.length; i++) {
        tmp[i + offset] = bytes[i];
      }

      return tmp;
    }

    return bytes;
  }

  final compEnc = x9IntegerToBytes(xBN, 1 + ((c.fieldSize + 7) ~/ 8));
  compEnc[0] = yBit ? 0x03 : 0x02;
  return c.decodePoint(compEnc);
}
