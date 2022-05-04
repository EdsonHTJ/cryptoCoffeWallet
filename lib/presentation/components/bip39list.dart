import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j8coffe/repository/crypto/transaction_data.dart';

Wrap bip39List(String bipStr) {
  var bipList = bipStr.split(" ");
  List<Widget> list = [];
  for (var i = 0; i < bipList.length; i++) {
    list.add(_bip39Word(bipList[i]));
  }

  return Wrap(
    spacing: 10,
    runSpacing: 5,
    children: list,
  );
}

Widget _bip39Word(String word) {
  return Container(
    padding: EdgeInsets.all(2),
    child: Text(word, style: TextStyle(fontSize: 30, color: Colors.white)),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.red,
    ),
  );
}
