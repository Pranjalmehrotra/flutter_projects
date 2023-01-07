class CurrencyConvertModel {
  CurrencyConvertModel({
    this.time,
    this.assetIdBase,
    this.assetIdQuote,
    this.rate,
  });

  CurrencyConvertModel.fromJson(dynamic json) {
    time = json['time'];
    assetIdBase = json['asset_id_base'];
    assetIdQuote = json['asset_id_quote'];
    rate = json['rate'];
  }
  String? time;
  String? assetIdBase;
  String? assetIdQuote;
  double? rate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['asset_id_base'] = assetIdBase;
    map['asset_id_quote'] = assetIdQuote;
    map['rate'] = rate;
    return map;
  }
}
