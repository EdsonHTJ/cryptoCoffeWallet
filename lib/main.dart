import 'package:flutter/material.dart';
import 'package:j8coffe/presentation/screens/start.dart';
import 'package:j8coffe/repository/utils/memory_utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var isinit = await SecureStorage.isInit();

  runApp(MyApp(isinit));
}
