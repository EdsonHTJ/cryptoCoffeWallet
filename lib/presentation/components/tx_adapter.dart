import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:j8coffe/repository/crypto/transaction_data.dart';

Widget transactionListView(List<TransactionData> txList) {
  if (txList.isEmpty) {
    return Container(
      width: double.infinity,
      child: Center(
          child: Text(
        'No transactions to show 💸',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30),
      )),
    );
  }
  return ListView.builder(
      padding: const EdgeInsets.all(1),
      itemCount: txList.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(children: [
          Container(
            height: 50,
            child: _txAdapter(txList[index]),
          ),
          SizedBox(height: 10)
        ]);
      });
}

Widget _txAdapter(TransactionData value) {
  var token = (value.token == null) ? "TRX" : value.symbol!;

  if (value.amount == null) {
    value.amount = 0;
  }

  var iconColor = Colors.red;
  var iconId = Icons.arrow_forward;

  if (value.amount! > 0) {
    iconColor = Colors.green;
    iconId = Icons.arrow_back;
  }

  var icon = Transform.rotate(
      angle: -45 * 3.14159274 / 180,
      child: Icon(
        iconId,
        color: iconColor,
        size: 18,
      ));

  return Container(
      child: Row(children: [
    icon,
    Spacer(),
    Text(_txValueToString(value.amount!)),
    SizedBox(
      width: 10,
    ),
    Text(token)
  ]));
}

String _txValueToString(int value) {
  return '${value.toDouble() / 1000000}';
}
