import 'models.dart';

class Paymentterms {
  Paymentterms({
    this.prepayment,
    this.cancellation,
  });

  Prepayment? prepayment;
  Cancellation? cancellation;

  factory Paymentterms.fromJson(Map<String, dynamic> json) => Paymentterms(
        prepayment: json["prepayment"] == null
            ? null
            : Prepayment.fromJson(json["prepayment"]),
        cancellation: json["cancellation"] == null
            ? null
            : Cancellation.fromJson(json["cancellation"]),
      );

  Map<String, dynamic> toJson() => {
        "prepayment": prepayment?.toJson(),
        "cancellation": cancellation?.toJson(),
      };
}

class Prepayment {
  Prepayment({
    this.typeExtended,
    this.type,
    this.extendedTypeTranslation,
    this.timeline,
    this.simpleTranslation,
    this.description,
    this.typeTranslation,
  });

  String? typeExtended;
  String? type;
  String? extendedTypeTranslation;
  Timeline? timeline;
  String? simpleTranslation;
  String? description;
  String? typeTranslation;

  factory Prepayment.fromJson(Map<String, dynamic> json) => Prepayment(
        typeExtended: json["type_extended"],
        type: json["type"],
        extendedTypeTranslation: json["extended_type_translation"],
        timeline: json["timeline"] == null
            ? null
            : Timeline.fromJson(json["timeline"]),
        simpleTranslation: json["simple_translation"],
        description: json["description"],
        typeTranslation: json["type_translation"],
      );

  Map<String, dynamic> toJson() => {
        "type_extended": typeExtended,
        "type": type,
        "extended_type_translation": extendedTypeTranslation,
        "timeline": timeline?.toJson(),
        "simple_translation": simpleTranslation,
        "description": description,
        "type_translation": typeTranslation,
      };
}

class IncrementalPrice {
  IncrementalPrice({
    this.extraChargesBreakdown,
    this.currency,
    this.price,
  });

  IncrementalPriceExtraChargesBreakdown? extraChargesBreakdown;
  String? currency;
  dynamic price;

  factory IncrementalPrice.fromJson(Map<String, dynamic> json) =>
      IncrementalPrice(
        extraChargesBreakdown: json["extra_charges_breakdown"] == null
            ? null
            : IncrementalPriceExtraChargesBreakdown.fromJson(
                json["extra_charges_breakdown"]),
        currency: json["currency"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "extra_charges_breakdown": extraChargesBreakdown?.toJson(),
        "currency": currency,
        "price": price,
      };
}

class IncrementalPriceExtraChargesBreakdown {
  IncrementalPriceExtraChargesBreakdown({
    this.netPrice,
    this.extraCharge,
  });

  String? netPrice;
  List<PurpleExtraCharge>? extraCharge;

  factory IncrementalPriceExtraChargesBreakdown.fromJson(
          Map<String, dynamic> json) =>
      IncrementalPriceExtraChargesBreakdown(
        netPrice: json["net_price"],
        extraCharge: json["extra_charge"] == null
            ? []
            : List<PurpleExtraCharge>.from(json["extra_charge"]!
                .map((x) => PurpleExtraCharge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "net_price": netPrice,
        "extra_charge": extraCharge == null
            ? []
            : List<dynamic>.from(extraCharge!.map((x) => x.toJson())),
      };
}

class PurpleExtraCharge {
  PurpleExtraCharge({
    this.amount,
    this.type,
    this.currency,
    this.name,
    this.excluded,
    this.chargeAmount,
    this.inclusionType,
    this.chargePriceMode,
  });

  dynamic amount;
  String? type;
  String? currency;
  String? name;
  int? excluded;
  String? chargeAmount;
  String? inclusionType;
  int? chargePriceMode;

  factory PurpleExtraCharge.fromJson(Map<String, dynamic> json) =>
      PurpleExtraCharge(
        amount: json["amount"],
        type: json["type"],
        currency: json["currency"],
        name: json["name"],
        excluded: json["excluded"],
        chargeAmount: json["charge_amount"],
        inclusionType: json["inclusion_type"],
        chargePriceMode: json["charge_price_mode"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "type": type,
        "currency": currency,
        "name": name,
        "excluded": excluded,
        "charge_amount": chargeAmount,
        "inclusion_type": inclusionType,
        "charge_price_mode": chargePriceMode,
      };
}

class MinPrice {
  MinPrice({
    this.price,
    this.currency,
    this.extraChargesBreakdown,
  });

  String? price;
  String? currency;
  MinPriceExtraChargesBreakdown? extraChargesBreakdown;

  factory MinPrice.fromJson(Map<String, dynamic> json) => MinPrice(
        price: json["price"],
        currency: json["currency"],
        extraChargesBreakdown: json["extra_charges_breakdown"] == null
            ? null
            : MinPriceExtraChargesBreakdown.fromJson(
                json["extra_charges_breakdown"]),
      );

  Map<String, dynamic> toJson() => {
        "price": price,
        "currency": currency,
        "extra_charges_breakdown": extraChargesBreakdown?.toJson(),
      };
}

class MinPriceExtraChargesBreakdown {
  MinPriceExtraChargesBreakdown({
    this.netPrice,
    this.extraCharge,
  });

  String? netPrice;
  List<FluffyExtraCharge>? extraCharge;

  factory MinPriceExtraChargesBreakdown.fromJson(Map<String, dynamic> json) =>
      MinPriceExtraChargesBreakdown(
        netPrice: json["net_price"],
        extraCharge: json["extra_charge"] == null
            ? []
            : List<FluffyExtraCharge>.from(json["extra_charge"]!
                .map((x) => FluffyExtraCharge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "net_price": netPrice,
        "extra_charge": extraCharge == null
            ? []
            : List<dynamic>.from(extraCharge!.map((x) => x.toJson())),
      };
}
