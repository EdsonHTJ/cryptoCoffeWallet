import 'package:flutter/material.dart';
import 'package:j8coffe/presentation/components/tx_adapter.dart';
import 'package:j8coffe/presentation/screens/qr_scanner.dart';
import 'package:j8coffe/presentation/screens/send.dart';
import 'package:j8coffe/presentation/screens/success.dart';

import 'buycoffe.dart';
import 'home.dart';

/// This is the stateful widget that the main application instantiates.
class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    SendScreen(),
    HomeScreen(),
    QRScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_upward_rounded),
                label: 'Send',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.coffee),
                  label: 'Buy Coffe',
                  backgroundColor: Colors.red),
            ],
            currentIndex: _selectedIndex,
            //selectedItemColor: Colors.black,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.shifting,
          ),
        ));
  }
}
