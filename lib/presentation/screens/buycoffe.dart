import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:j8coffe/usecases/account_use_case.dart' as accCtrl;
import 'package:j8coffe/presentation/screens/success.dart';
import 'package:j8coffe/presentation/screens/unlock.dart';

class BuyCoffeScreen extends StatefulWidget {
  @override
  _BuyCoffeScreenState createState() => _BuyCoffeScreenState();
}

class _BuyCoffeScreenState extends State<BuyCoffeScreen> {
  TextEditingController _addrCtrl = new TextEditingController();
  TextEditingController _amountCtrl = new TextEditingController();
  TextEditingController _buttonLabel =
      new TextEditingController(text: "Send TX");

  int _state = 0;

  String accAddr = "Loading";
  String balance = "0.00";

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
  }

  @override
  void initState() {
    super.initState();
    updateAddr();
  }

  void parseAndSendTrx() {
    if (_state == 0) {
      double amount = double.parse(_amountCtrl.text);
      _requestPinToSend(context, amount);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 120,
                    ),
                    FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          accAddr,
                          style: TextStyle(fontSize: 20),
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Balance:",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      balance,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Coffe Machine Address:',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      'Twxasksgnwwkwjwjlhwglwghwj',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                                height: 100,
                                padding: EdgeInsets.all(5),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.red),
                                  onPressed: () {},
                                  child: Text('TextButton'),
                                ))),
                        Expanded(
                            child: Container(
                                height: 100,
                                padding: EdgeInsets.all(5),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.red),
                                  onPressed: () {},
                                  child: Text('TextButton'),
                                ))),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                                height: 100,
                                padding: EdgeInsets.all(5),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.red),
                                  onPressed: () {},
                                  child: Text('TextButton'),
                                ))),
                        Expanded(
                            child: Container(
                                height: 100,
                                padding: EdgeInsets.all(5),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.red),
                                  onPressed: () {},
                                  child: Text('TextButton'),
                                ))),
                      ],
                    ),
                    SizedBox(height: 50),
                  ]),
            ),
          ),
        ])));
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SucessScreen()));
  }

  void _requestPinToSend(BuildContext context, double amount) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => UnlockScreen((context) {
              try {
                accCtrl.sendTrx(_addrCtrl.text, amount).then((value) => {
                      if (value == null)
                        {throw -1}
                      else if (value.success)
                        {
                          Navigator.of(context).pop(),
                          _navigateToNextScreen(context)
                        }
                    });
              } on Exception catch (_) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Invalid amount"),
                ));
              }
            })));
  }
}