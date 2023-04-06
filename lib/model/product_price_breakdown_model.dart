import 'models.dart';

class ProductPriceBreakdown {
  ProductPriceBreakdown({
    this.allInclusiveAmount,
    this.netAmount,
    this.grossAmountPerNight,
    this.items,
    this.grossAmount,
    this.excludedAmount,
    this.nrStays,
    this.benefits,
    this.includedTaxesAndChargesAmount,
    this.grossAmountHotelCurrency,
  });

  AllInclusiveAmount? allInclusiveAmount;
  AllInclusiveAmount? netAmount;
  AllInclusiveAmount? grossAmountPerNight;
  List<Item>? items;
  AllInclusiveAmount? grossAmount;
  AllInclusiveAmount? excludedAmount;
  int? nrStays;
  List<dynamic>? benefits;
  AllInclusiveAmount? includedTaxesAndChargesAmount;
  AllInclusiveAmount? grossAmountHotelCurrency;

  factory ProductPriceBreakdown.fromJson(Map<String, dynamic> json) =>
      ProductPriceBreakdown(
        allInclusiveAmount: json["all_inclusive_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["all_inclusive_amount"]),
        netAmount: json["net_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["net_amount"]),
        grossAmountPerNight: json["gross_amount_per_night"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["gross_amount_per_night"]),
        items: json["items"] == null
            ? []
            : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
        grossAmount: json["gross_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["gross_amount"]),
        excludedAmount: json["excluded_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["excluded_amount"]),
        nrStays: json["nr_stays"],
        benefits: json["benefits"] == null
            ? []
            : List<dynamic>.from(json["benefits"]!.map((x) => x)),
        includedTaxesAndChargesAmount:
            json["included_taxes_and_charges_amount"] == null
                ? null
                : AllInclusiveAmount.fromJson(
                    json["included_taxes_and_charges_amount"]),
        grossAmountHotelCurrency: json["gross_amount_hotel_currency"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["gross_amount_hotel_currency"]),
      );

  Map<String, dynamic> toJson() => {
        "all_inclusive_amount": allInclusiveAmount?.toJson(),
        "net_amount": netAmount?.toJson(),
        "gross_amount_per_night": grossAmountPerNight?.toJson(),
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "gross_amount": grossAmount?.toJson(),
        "excluded_amount": excludedAmount?.toJson(),
        "nr_stays": nrStays,
        "benefits":
            benefits == null ? [] : List<dynamic>.from(benefits!.map((x) => x)),
        "included_taxes_and_charges_amount":
            includedTaxesAndChargesAmount?.toJson(),
        "gross_amount_hotel_currency": grossAmountHotelCurrency?.toJson(),
      };
}

class AllInclusiveAmount {
  AllInclusiveAmount({
    this.value,
    this.currency,
  });

  double? value;
  String? currency;

  factory AllInclusiveAmount.fromJson(Map<String, dynamic> json) =>
      AllInclusiveAmount(
        value: json["value"]?.toDouble(),
        currency: json["currency"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "currency": currency,
      };
}

class PriceBreakdown {
  PriceBreakdown({
    this.currency,
    this.allInclusivePrice,
  });

  String? currency;
  double? allInclusivePrice;

  factory PriceBreakdown.fromJson(Map<String, dynamic> json) => PriceBreakdown(
        currency: json["currency"],
        allInclusivePrice: json["all_inclusive_price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "currency": currency,
        "all_inclusive_price": allInclusivePrice,
      };
}
