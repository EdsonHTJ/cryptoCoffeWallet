class TransactionData {
  final String to;
  final String from;
  final String? token;
  String? symbol;
  String hash;
  int? amount;
  final bool isConfirmed;

  TransactionData(
      {required this.to,
      required this.from,
      required this.token,
      required this.amount,
      required this.isConfirmed,
      required this.hash});

  factory TransactionData.fromJson(Map<String, dynamic> json) {
    return TransactionData(
        to: json['toAddress'],
        from: json['ownerAddress'],
        token: json['contractData']["contract_address"],
        amount: json['contractData']["amount"],
        isConfirmed: json['confirmed'],
        hash: json['hash']);
  }
}
