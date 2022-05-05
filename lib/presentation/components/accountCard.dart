import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget accountCard(String addr, String balance) {
  return Container(
      child: Column(children: [
    Row(
    children: [FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          "Account",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 20),
        ))]),
    SizedBox(
      height: 10,
    ),
    FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          addr,
          style: TextStyle(fontSize: 20),
        )),
    SizedBox(
      height: 16,
    ),
    Text(
      balance,
      style: TextStyle(fontSize: 20.0),
    )
  ]),
  padding: EdgeInsets.all(20),
  decoration:  BoxDecoration(
    border: Border.all(color: Colors.red),
      borderRadius: BorderRadius.circular(10),
      color: Color.fromARGB(160, 0x1F, 0x1F, 0x1F),
    ),);
}
