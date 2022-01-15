import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:j8coffe/usecases/account_use_case.dart' as accCtrl;
import 'package:j8coffe/presentation/screens/success.dart';
import 'package:j8coffe/presentation/screens/unlock.dart';

class SendScreen extends StatefulWidget {
  @override
  _SendScreenState createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
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
      _requestPinToSend(context, _addrCtrl.text, amount);
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
                    Text(
                      'Recipient Addr:',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      obscureText: false,
                      keyboardType: TextInputType.multiline,
                      controller: _addrCtrl,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Trx Addr',
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Amount',
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                      keyboardType: TextInputType.number,
                      controller: _amountCtrl,
                    ),
                    SizedBox(height: 50),
                    Center(
                        child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: parseAndSendTrx,
                        child: TextField(
                          enabled: false,
                          textAlign: TextAlign.center,
                          controller: _buttonLabel,
                        ),
                        style: ButtonStyle(),
                      ),
                    ))
                  ]),
            ),
          ),
        ])));
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SucessScreen()));
  }

  void _requestPinToSend(BuildContext context, String to, double amount) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => UnlockScreen((context) {
              try {
                accCtrl.sendTrx(to, amount).then((value) => {
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
