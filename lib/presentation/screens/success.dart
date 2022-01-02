import 'package:flutter/material.dart';
import 'dart:async';

class SucessScreen extends StatefulWidget {
  @override
  _SucessScreenState createState() => _SucessScreenState();
}

class _SucessScreenState extends State<SucessScreen> {
  void startTimer() {
    const oneSec = const Duration(seconds: 5);
    Timer.periodic(oneSec, (Timer timer) {
      timer.cancel();
      _navigateToPreviousScreeen(context);
    });
  }

  _SucessScreenState() {
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("Success")]),
        ),
      ),
    );
  }

  void _navigateToPreviousScreeen(BuildContext context) {
    Navigator.of(context).pop();
  }
}
