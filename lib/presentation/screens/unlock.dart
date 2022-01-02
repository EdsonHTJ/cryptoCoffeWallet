import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:j8coffe/repository/userdata/user_data.dart';
import 'package:j8coffe/presentation/components/keypad.dart';
import 'package:j8coffe/repository/utils/memory_utils.dart';
import 'package:j8coffe/usecases/account_use_case.dart' as aController;

class OnFinished {
  Function _callBack = () {};

  setCallback(Function cb) {
    this._callBack = cb;
  }

  Function getCallback() {
    return this._callBack;
  }
}

class UnlockScreen extends StatefulWidget {
  final OnFinished onFinalCb = OnFinished();
  UnlockScreen(Function cb) {
    onFinalCb.setCallback(cb);
  }

  @override
  _UnlockScreenState createState() =>
      _UnlockScreenState(onFinalCb.getCallback());
}

class _UnlockScreenState extends State<UnlockScreen> {
  TextEditingController _pin = new TextEditingController();
  bool _valid = false;

  Function callBack = () {};
  _UnlockScreenState(Function cb) {
    this.callBack = cb;
  }

  void authPin(String pin) async {
    setState(() {
      SecureStorage.validatePin(pin).then((value) {
        _valid = value;
        if (_valid) {
          restoreUserData(pin);
        }
      });
    });
  }

  void restoreUserData(String pin) {
    var udata = UserData();
    udata.restoreData(pin).then((value) {
      aController.addAccount();
      this.callBack(context);
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
                SizedBox(
                  height: 100,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black26,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabled: false,
                    contentPadding: EdgeInsets.all(-20.0),
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 100),
                  textAlign: TextAlign.center,
                  obscureText: true,
                  controller: _pin,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ], // Only numbers can be entered
                ),
                SizedBox(
                  height: 50,
                ),
                KeyPad(
                  pinController: _pin,
                  isPinLogin: false,
                  onChange: (String pin) {},
                  onSubmit: (String pin) {
                    authPin(pin);
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
