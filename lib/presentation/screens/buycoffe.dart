import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:j8coffe/models/buyoptions.dart';
import 'package:j8coffe/presentation/components/accountCard.dart';
import 'package:j8coffe/presentation/components/prices_adapter.dart';
import 'package:j8coffe/usecases/account_use_case.dart' as accCtrl;
import 'package:j8coffe/presentation/screens/success.dart';
import 'package:j8coffe/presentation/screens/unlock.dart';

class BuyCoffeScreen extends StatefulWidget {
  BuyOptions? _pList;
  BuyCoffeScreen(BuyOptions plist) {
    this._pList = plist;
  }

  @override
  _BuyCoffeScreenState createState() => _BuyCoffeScreenState(this._pList!);
}

class _BuyCoffeScreenState extends State<BuyCoffeScreen> {
  TextEditingController _addrCtrl = new TextEditingController();
  TextEditingController _amountCtrl = new TextEditingController();

  BuyOptions? _bOpts;
  _BuyCoffeScreenState(BuyOptions addr) {
    this._bOpts = addr;
  }

  String accAddr = "Loading";
  String balance = "0.00";

  void updateAddr() {
    accCtrl.getAddr().then((value) {
      setState(() {
        accAddr = value;
      });
    });
    accCtrl.getBalance().then((value) {
      setState(() {
        balance = value.toString();
      });
    });
  }

  void onItemClick(BuyOption value) {
    _requestPinToSend(context, _bOpts!.address, value.price);
  }

  @override
  void initState() {
    super.initState();
    updateAddr();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Buy Coffe"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: <Widget>[
        SizedBox(
          height: 20,
        ),
        accountCard(accAddr, balance),
        SizedBox(
          height: 16,
        ),
        Text(
          'Coffe Machine Address:',
          style: TextStyle(fontSize: 20.0),
        ),
        FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              this._bOpts!.address,
              style: TextStyle(fontSize: 20),
            )),
        SizedBox(
          height: 16,
        ),
        Expanded(child: pricesListView(this._bOpts!.priceList, onItemClick)),
        SizedBox(height: 50),
      ]),
    ));
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SucessScreen()));
  }

  void _requestPinToSend(BuildContext context, String to, double amount) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => UnlockScreen((context) {
              try {
                accCtrl.sendTrx(to, amount).then((value) => {
                      if (value == null)
                        {throw -1}
                      else if (value.success)
                        {
                          Navigator.of(context).pop(),
                          _navigateToNextScreen(context)
                        }
                    });
              } on Exception catch (_) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Invalid amount"),
                ));
              }
            })));
  }
}
