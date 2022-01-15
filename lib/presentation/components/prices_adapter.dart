import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j8coffe/models/buyoptions.dart';
import 'package:j8coffe/repository/crypto/transaction_data.dart';

ListView pricesListView(List<BuyOption> bOpt, Function onClick) {
  return ListView.builder(
      padding: const EdgeInsets.all(20),
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
          color: Colors.red,
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
