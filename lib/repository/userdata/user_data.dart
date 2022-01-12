import 'package:j8coffe/repository/crypto/trx.dart';
import 'package:j8coffe/repository/utils/memory_utils.dart';

class UserData {
  static final UserData _singleton = UserData._internal();

  String _mnemo = "";
  List<TrxAccount> _accList = [];

  factory UserData() {
    return _singleton;
  }

  UserData._internal();

  Future<void> restoreData(String pin) async {
    await SecureStorage.validatePin(pin).then((bool value) async {
      if (value) {
        _mnemo = await SecureStorage.getMnemonic();
      }
    });
  }

  void addAcc() {
    var path = getVaultPath(_accList.length);
    _accList.add(TrxAccount(this._mnemo, path));
  }

  TrxAccount? getAccount(int index) {
    if (index >= _accList.length) {
      return null;
    }

    return _accList[index];
  }
}
