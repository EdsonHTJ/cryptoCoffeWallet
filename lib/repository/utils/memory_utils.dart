import 'dart:io';

import 'package:bip39/bip39.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as fss;

class SecureStorage {
  static final _storage = fss.FlutterSecureStorage();
  static final _keyMnem = "mnemonic";
  static final _keyPin = "pin";

  static Future setMnemonic(String mnemonic, pin) async {
    await _storage.write(key: _keyMnem, value: mnemonic);
  }

  static Future setPin(String pin) async {
    await _storage.write(key: _keyPin, value: pin);
  }

  static Future<String> getMnemonic() async {
    try {
      var mnem = (await _storage.read(key: _keyMnem));
      return mnem ?? '';
    } catch (e) {
      return '';
    }
  }

  static Future<bool> validatePin(String pin) async {
    try {
      var stpin = (await _storage.read(key: _keyPin)) ?? '';
      return stpin == pin;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> isInit() async {
    var mnem = await getMnemonic();
    return validateMnemonic(mnem);
  }
}
/*

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/mnemonic.txt');
}

Future<File> writeMnemonic(String mnemo) async {
  fss.AndroidOptions.
}

Future<String> readMnemo() async {
  try {
    final file = await _localFile;

    // Read the file
    final contents = await file.readAsString();

    return contents;
  } catch (e) {
    // If encountering an error, return 0
    return '';
  }
}

Future<bool> isInit() async {
  var mnemonic = await readMnemo();

  return validateMnemonic(mnemonic);
}
*/