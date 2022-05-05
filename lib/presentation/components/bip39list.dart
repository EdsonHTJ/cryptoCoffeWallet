import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j8coffe/repository/crypto/transaction_data.dart';

Widget bip39List(String bipStr) {
  var bipList = bipStr.split(" ");
  List<Widget> list = [];
  for (var i = 0; i < bipList.length; i++) {
    list.add(_bip39Word(bipList[i]));
  }

  return Container(
    padding: EdgeInsets.all(10),
    child: Wrap(
      spacing: 10,
      runSpacing: 5,
      children: list,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey, width: 1),
    ),
  );
}

Widget _bip39Word(String word) {
  return Container(
    padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
    child: Text(word, style: TextStyle(fontSize: 30, color: Colors.white)),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.red, width: 2),
    ),
  );
}
