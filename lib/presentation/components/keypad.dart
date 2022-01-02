import 'package:flutter/material.dart';

// ignore: must_be_immutable
class KeyPad extends StatelessWidget {
  double buttonSize = 60.0;
  final TextEditingController pinController;
  final Function onChange;
  final Function onSubmit;
  final bool isPinLogin;

  KeyPad(
      {required this.onChange,
      required this.onSubmit,
      required this.pinController,
      required this.isPinLogin});
  void _backspace() {
    if (pinController.text.length > 0) {
      pinController.text =
          pinController.text.substring(0, pinController.text.length - 1);
    }

    onChange(pinController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonWidget('1'),
              buttonWidget('2'),
              buttonWidget('3'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonWidget('4'),
              buttonWidget('5'),
              buttonWidget('6'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonWidget('7'),
              buttonWidget('8'),
              buttonWidget('9'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              iconButtonWidget(Icons.backspace, _backspace),
              buttonWidget('0'),
              !isPinLogin
                  ? iconButtonWidget(Icons.check_circle, () {
                      if (pinController.text.length > 7) {
                        pinController.text = pinController.text.substring(0, 8);
                      }
                      onSubmit(pinController.text);
                    })
                  : Container(
                      width: buttonSize,
                    ),
            ],
          ),
        ],
      ),
    );
  }

  iconButtonWidget(IconData icon, Function function) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        height: buttonSize,
        width: buttonSize,
        decoration:
            BoxDecoration(color: Colors.redAccent, shape: BoxShape.circle),
        child: Center(
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  buttonWidget(String buttonText) {
    return Container(
      height: buttonSize,
      width: buttonSize,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonSize / 2),
        ),
        focusColor: Colors.red,
        hoverColor: Colors.red,
        highlightColor: Colors.red,
        onPressed: () {
          if (pinController.text.length <= 7) {
            pinController.text = pinController.text + buttonText;
            onChange(pinController.text);
          }
        },
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
