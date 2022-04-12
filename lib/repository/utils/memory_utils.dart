import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:bip39/bip39.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as fss;
import 'package:encrypt/encrypt.dart' as enc;
import 'package:pointycastle/digests/sha256.dart' as sha;
import 'package:pointycastle/pointycastle.dart';


class SecureStorage {
  static final _storage = fss.FlutterSecureStorage();
  static final _keyMnem = "mnemonic";
  static final _keyPin = "pin";
  static final _keyIv = "iv";

  static Future setMnemonic(String mnemonic, String pin) async {
    Digest sha2 = new Digest("SHA-256");
    final key = sha2.process(Uint8List.fromList((pin + "salt").codeUnits));
    final encrypter = enc.Encrypter(enc.AES(enc.Key(key)));
    final iv = enc.IV.fromSecureRandom(16);
    final encrypted = encrypter.encrypt(mnemonic, iv: iv);

    await _storage.write(key: _keyMnem, value: encrypted.base64);
    await _storage.write(key: _keyIv, value: iv.base64);
  }

  static Future setPin(String pin) async {
    Digest sha2 = new Digest("SHA-256");
    var data = sha2.process(Uint8List.fromList(pin.codeUnits));
    await _storage.write(key: _keyPin, value: base64Encode(data));
  }

  static Future<String> getPin() async {
    try{
      final pinHash = (await _storage.read(key: _keyPin));
      return pinHash ?? '';
    } catch (e) {
      return '';
    }
  }

  static Future<String> getMnemonic(String pin) async {
    try {
      final mnemEnc64 = (await _storage.read(key: _keyMnem));
      final iv64 = (await _storage.read(key: _keyIv));
      final mnemEnc = enc.Encrypted.fromBase64(mnemEnc64!);
      final iv = enc.IV.fromBase64(iv64!);

      Digest sha2 = new Digest("SHA-256");
      final key = sha2.process(Uint8List.fromList((pin + "salt").codeUnits));
      final encrypter = enc.Encrypter(enc.AES(enc.Key(key)));
      final mnem = encrypter.decrypt(mnemEnc, iv: iv);

      return mnem;
    } catch (e) {
      return '';
    }
  }

  static Future<bool> validatePin(String pin) async {
    try {
      var b64Pin = await _storage.read(key: _keyPin);

      Digest sha2 = new Digest("SHA-256");
      var hsPin = sha2.process(Uint8List.fromList(pin.codeUnits));
      var decodedPin = base64Decode(b64Pin!);
      return listEquals(hsPin, decodedPin);
    } catch (e) {
      return false;
    }
  }

  static Future<bool> isInit() async {
    var pin = await getPin();
    return pin != '';
  }
}
/*

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/mnemonic.txt');
}

Future<File> writeMnemonic(String mnemo) async {
  fss.AndroidOptions.
}

Future<String> readMnemo() async {
  try {
    final file = await _localFile;

    // Read the file
    final contents = await file.readAsString();

    return contents;
  } catch (e) {
    // If encountering an error, return 0
    return '';
  }
}

Future<bool> isInit() async {
  var mnemonic = await readMnemo();

  return validateMnemonic(mnemonic);
}
*/