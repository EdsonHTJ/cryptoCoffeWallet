import 'package:flutter/material.dart';
import 'package:j8coffe/presentation/screens/import.dart';
import 'package:j8coffe/presentation/screens/send.dart';
import 'package:j8coffe/presentation/screens/unlock.dart';

import 'base.dart';

class MyApp extends StatelessWidget {
  StatefulWidget _homepage = MyHomePage(title: 'J8 Coffe Break');
  // This widget is the root of your application.
  MyApp(bool isInit) {
    void _navigateToBaseScreen(BuildContext context) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => BaseScreen()));
    }

    if (isInit) {
      _homepage = UnlockScreen(_navigateToBaseScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        canvasColor: Color.fromARGB(150, 0x2A, 0x2b, 0x37),
        brightness: Brightness.dark,
      ),
      home: _homepage,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ImportScreen()));
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to J8 coffe app',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Start a New TRX Account'),
                style: ButtonStyle(),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _navigateToNextScreen(context);
                },
                child: const Text('Import a TRX Account'),
                style: ButtonStyle(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
