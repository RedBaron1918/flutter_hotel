import 'models.dart';

class Agenumerval {
  Agenumerval({
    this.groupByPrice,
    this.typesByPrice,
    this.crib,
    this.maxAge,
    this.minAge,
    this.extraBed,
  });

  GroupByPrice? groupByPrice;
  List<List<TypesByPrice>>? typesByPrice;
  Crib? crib;
  int? maxAge;
  int? minAge;
  ExtraBed? extraBed;

  factory Agenumerval.fromJson(Map<String, dynamic> json) => Agenumerval(
        groupByPrice: json["group_by_price"] == null
            ? null
            : GroupByPrice.fromJson(json["group_by_price"]),
        typesByPrice: json["types_by_price"] == null
            ? []
            : List<List<TypesByPrice>>.from(json["types_by_price"]!.map((x) =>
                List<TypesByPrice>.from(
                    x.map((x) => typesByPriceValues.map[x]!)))),
        crib: json["crib"] == null ? null : Crib.fromJson(json["crib"]),
        maxAge: json["max_age"],
        minAge: json["min_age"],
        extraBed: json["extra_bed"] == null
            ? null
            : ExtraBed.fromJson(json["extra_bed"]),
      );

  Map<String, dynamic> toJson() => {
        "group_by_price": groupByPrice?.toJson(),
        "types_by_price": typesByPrice == null
            ? []
            : List<dynamic>.from(typesByPrice!.map((x) => List<dynamic>.from(
                x.map((x) => typesByPriceValues.reverse[x])))),
        "crib": crib?.toJson(),
        "max_age": maxAge,
        "min_age": minAge,
        "extra_bed": extraBed?.toJson(),
      };
}
