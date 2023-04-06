class FluffyExtraCharge {
  FluffyExtraCharge({
    this.inclusionType,
    this.chargeAmount,
    this.chargePriceMode,
    this.amount,
    this.type,
    this.currency,
    this.name,
    this.excluded,
  });

  String? inclusionType;
  String? chargeAmount;
  int? chargePriceMode;
  String? amount;
  String? type;
  String? currency;
  String? name;
  int? excluded;

  factory FluffyExtraCharge.fromJson(Map<String, dynamic> json) =>
      FluffyExtraCharge(
        inclusionType: json["inclusion_type"],
        chargeAmount: json["charge_amount"],
        chargePriceMode: json["charge_price_mode"],
        amount: json["amount"],
        type: json["type"],
        currency: json["currency"],
        name: json["name"],
        excluded: json["excluded"],
      );

  Map<String, dynamic> toJson() => {
        "inclusion_type": inclusionType,
        "charge_amount": chargeAmount,
        "charge_price_mode": chargePriceMode,
        "amount": amount,
        "type": type,
        "currency": currency,
        "name": name,
        "excluded": excluded,
      };
}
