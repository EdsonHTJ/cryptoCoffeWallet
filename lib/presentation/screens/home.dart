import 'package:flutter/material.dart';
import 'package:j8coffe/presentation/components/accountCard.dart';
import 'package:j8coffe/usecases/account_use_case.dart' as accCtrl;
import 'package:j8coffe/repository/crypto/transaction_data.dart';
import 'package:j8coffe/presentation/components/tx_adapter.dart';
import 'package:j8coffe/presentation/screens/success.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String accAddr = "Loading";
  String balance = "0.00";

  List<TransactionData> txList = List.empty();

  void updateAddr() {
    accCtrl.getAddr().then((value) {
      setState(() {
        accAddr = value;
      });
    });
    accCtrl.getBalance().then((value) {
      setState(() {
        balance = value.toString();
      });
    });
    accCtrl.getAccountTransactions().then((value) {
      setState(() {
        txList = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    updateAddr();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
              SizedBox(
                height: 50,
              ),
              accountCard(accAddr, balance),
              SizedBox(height: 20),
              //txList()
              Expanded(child: transactionListView(txList))
            ])));
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SucessScreen()));
  }
}
