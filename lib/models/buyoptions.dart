import 'dart:ffi';

class BuyOption {
  final String name;
  final double price;

  BuyOption({required this.name, required this.price});

  factory BuyOption.fromJson(Map<String, dynamic> json) {
    return BuyOption(
        name: json['name'], price: double.parse(json['price'].toString()));
  }
}

class BuyOptions {
  final String address;
  final String token;
  final String tokenName;
  final List<BuyOption> priceList;

  BuyOptions(
      {required this.address,
      required this.token,
      required this.priceList,
      required this.tokenName});

  factory BuyOptions.fromJson(Map<String, dynamic> json) {
    var addr = json['address'];
    var token = json['tokenId'];
    var tokenName = json['tokenName'];
    List<BuyOption> listOpt = [];

    var pricesList = json['prices'] as List<dynamic>;
    pricesList.forEach((element) {
      listOpt.add(BuyOption.fromJson(element));
    });

    return BuyOptions(
      address: addr,
      token: token,
      priceList: listOpt,
      tokenName: tokenName,
    );
  }
}
