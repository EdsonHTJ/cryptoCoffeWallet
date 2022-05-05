import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j8coffe/models/buyoptions.dart';
import 'package:j8coffe/repository/crypto/transaction_data.dart';

ListView pricesListView(List<BuyOption> bOpt, Function onClick) {
  return ListView.builder(
      itemCount: bOpt.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(children: [
          Container(
            height: 60,
            child: _priceAdapter(bOpt[index], onClick),
          ),
          SizedBox(height: 10)
        ]);
      });
}

Widget _priceAdapter(BuyOption value, Function onClick) {
  return GestureDetector(
      onTap: () {
        onClick(value);
      },
      child: Container(
           decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
            ),
          child: Row(children: [
            SizedBox(
              width: 10,
            ),
            Text(value.name),
            Spacer(),
            Text(value.price.toString()),
            SizedBox(
              width: 10,
            ),
          ])));
}
