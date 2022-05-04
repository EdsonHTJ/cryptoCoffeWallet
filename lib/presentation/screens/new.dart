import 'dart:math';

import 'package:flutter/material.dart';
import 'package:bip39/bip39.dart' as bip39;
import 'package:j8coffe/presentation/components/bip39list.dart';
import 'package:j8coffe/presentation/screens/import.dart';
import 'package:j8coffe/presentation/screens/unlock.dart';
import 'package:j8coffe/repository/userdata/user_data.dart';
import 'package:j8coffe/repository/utils/memory_utils.dart';
import 'package:j8coffe/presentation/components/dialog.dart';
import 'package:flutter/services.dart';
import 'base.dart';

class NewScreen extends StatefulWidget {
  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  var mnemonic = bip39.generateMnemonic();

  void _nextScreen() {
    UserData().setMnemonic(mnemonic);
    _navigateToNextScreen(context);
  }

  void _generateAgain() {
    setState(() {
      mnemonic = bip39.generateMnemonic();
    });
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
                  'Generated Mnemonic:',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(height: 200, child: bip39List(mnemonic)),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      _generateAgain();
                    },
                    child: const Text('generate'),
                    style: ButtonStyle(),
                  ),
                )
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _nextScreen,
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

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => ImportScreen()));
}
