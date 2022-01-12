import 'package:j8coffe/repository/crypto/transaction_data.dart';
import 'package:j8coffe/repository/userdata/user_data.dart';

import '../repository/crypto/trx.dart';

void addAccount() {
  var udata = UserData();
  udata.addAcc();
}

Future<String> getAddr() async {
  var udata = UserData();
  var acc = udata.getAccount(0);
  if (acc == null) {
    return "";
  }

  return acc.getAddr();
}

Future<List<TransactionData>> getAccountTransactions() async {
  var udata = UserData();
  var acc = udata.getAccount(0);
  if (acc == null) {
    return List.empty();
  }

  return await acc.getTxList();
}

Future<double> getBalance() async {
  var udata = UserData();
  var acc = udata.getAccount(0);
  if (acc == null) {
    return 0.0;
  }

  return (await acc.getBalance() / 1000000);
}

Future<SendResult?> sendTrx(String rcvAddr, double amount) async {
  var udata = UserData();
  var acc = udata.getAccount(0)!;

  var balance = await acc.getBalance();
  if (balance < amount) {
    return null;
  }
  int intAmt = (amount * 1000000).round();

  var sendResult = await acc.send(rcvAddr, intAmt);
  return sendResult;
}
