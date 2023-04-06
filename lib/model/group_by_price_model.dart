import 'models.dart';

class GroupByPrice {
  GroupByPrice({
    this.freePerNight0,
    this.fixedPerNight11800,
  });

  List<TypesByPrice>? freePerNight0;
  List<TypesByPrice>? fixedPerNight11800;

  factory GroupByPrice.fromJson(Map<String, dynamic> json) => GroupByPrice(
        freePerNight0: json["free,per_night,0"] == null
            ? []
            : List<TypesByPrice>.from(json["free,per_night,0"]!
                .map((x) => typesByPriceValues.map[x]!)),
        fixedPerNight11800: json["fixed,per_night,118.00"] == null
            ? []
            : List<TypesByPrice>.from(json["fixed,per_night,118.00"]!
                .map((x) => typesByPriceValues.map[x]!)),
      );

  Map<String, dynamic> toJson() => {
        "free,per_night,0": freePerNight0 == null
            ? []
            : List<dynamic>.from(
                freePerNight0!.map((x) => typesByPriceValues.reverse[x])),
        "fixed,per_night,118.00": fixedPerNight11800 == null
            ? []
            : List<dynamic>.from(
                fixedPerNight11800!.map((x) => typesByPriceValues.reverse[x])),
      };
}
