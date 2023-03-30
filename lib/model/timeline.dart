class Timeline {
  Timeline({
    this.uCurrencyCode,
    this.currencyCode,
    this.policygroupInstanceId,
    this.nrStages,
  });

  String? uCurrencyCode;
  String? currencyCode;
  String? policygroupInstanceId;
  int? nrStages;

  factory Timeline.fromJson(Map<String, dynamic> json) => Timeline(
        uCurrencyCode: json["u_currency_code"],
        currencyCode: json["currency_code"],
        policygroupInstanceId: json["policygroup_instance_id"],
        nrStages: json["nr_stages"],
      );

  Map<String, dynamic> toJson() => {
        "u_currency_code": uCurrencyCode,
        "currency_code": currencyCode,
        "policygroup_instance_id": policygroupInstanceId,
        "nr_stages": nrStages,
      };
}
