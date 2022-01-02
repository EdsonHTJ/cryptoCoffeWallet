import 'package:flutter/material.dart';
import 'package:bip39/bip39.dart' as bip39;
import 'package:j8coffe/presentation/screens/unlock.dart';
import 'package:j8coffe/repository/utils/memory_utils.dart';
import 'package:j8coffe/presentation/components/dialog.dart';
import 'package:flutter/services.dart';

import 'base.dart';

class ImportScreen extends StatefulWidget {
  @override
  _ImportScreenState createState() => _ImportScreenState();
}

class _ImportScreenState extends State<ImportScreen> {
  TextEditingController _mnemonicController = new TextEditingController();
  TextEditingController _pinController = new TextEditingController();

  bool _isConfirmed = false;
  void _saveMnemo() {
    String mnemo = _mnemonicController.text;
    String pin = _pinController.text;
    bool isValid = bip39.validateMnemonic(mnemo);
    if (isValid) {
      if (_isConfirmed) {
        _navigateToNextScreen(context);
      } else {
        var actions = <Widget>[
          TextButton(
            child: const Text('not confirm'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('confirm'),
            onPressed: () async {
              SecureStorage.setMnemonic(mnemo);
              SecureStorage.setPin(pin);
              var pincheck = await SecureStorage.validatePin(pin);
              var mnem = await SecureStorage.getMnemonic();
              if ((mnem == mnemo) && pincheck) {
                _isConfirmed = true;
              }
              Navigator.of(context).pop();
            },
          ),
        ];
        customDialog(
            context, "Confirm the following mnemonic?", mnemo, actions);
      }
    } else {
      var actions = <Widget>[
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ];
      customDialog(
          context, "Invalid", "The inputed mnemonic is invalid", actions);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Please insert the BIP39 mnemonic:',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  obscureText: false,
                  keyboardType: TextInputType.multiline,
                  minLines: 5,
                  maxLines: 5,
                  controller: _mnemonicController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mnemonic',
                    contentPadding: EdgeInsets.all(20.0),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Pin',
                    contentPadding: EdgeInsets.all(20.0),
                  ),
                  keyboardType: TextInputType.number,
                  controller: _pinController,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ], // Only numbers can be entered
                ),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _saveMnemo,
        tooltip: 'Increment',
        child: Icon(Icons.arrow_forward),
        focusColor: Colors.red,
        hoverColor: Colors.red,
        splashColor: Colors.red,
        backgroundColor: Colors.red,
      ),
    );
  }
}

void _navigateToBaseScreen(BuildContext context) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => BaseScreen()));
}

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => UnlockScreen(_navigateToBaseScreen)));
}
