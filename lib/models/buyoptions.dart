class BuyOption {
  final String name;
  final double price;

  BuyOption({required this.name, required this.price});

  factory BuyOption.fromJson(Map<String, dynamic> json) {
    return BuyOption(name: json['name'], price: json['price']);
  }
}

class BuyOptions {
  final String address;
  final String token;
  final List<BuyOption> priceList;

  BuyOptions({
    required this.address,
    required this.token,
    required this.priceList,
  });

  factory BuyOptions.fromJson(Map<String, dynamic> json) {
    var addr = json['address'];
    var token = json['token'];
    List<BuyOption> listOpt = [];

    var pricesList = json['prices'] as List<Map<String, dynamic>>;
    pricesList.forEach((element) {
      listOpt.add(BuyOption.fromJson(element));
    });

    return BuyOptions(
      address: addr,
      token: token,
      priceList: listOpt,
    );
  }
}
