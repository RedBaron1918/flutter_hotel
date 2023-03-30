import 'models.dart';

class BedConfiguration {
  BedConfiguration({
    this.bedTypes,
  });

  List<BedType>? bedTypes;

  factory BedConfiguration.fromJson(Map<String, dynamic> json) =>
      BedConfiguration(
        bedTypes: json["bed_types"] == null
            ? []
            : List<BedType>.from(
                json["bed_types"]!.map((x) => BedType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "bed_types": bedTypes == null
            ? []
            : List<dynamic>.from(bedTypes!.map((x) => x.toJson())),
      };
}

class BedType {
  BedType({
    this.descriptionImperial,
    this.name,
    this.nameWithCount,
    this.description,
    this.bedType,
    this.count,
    this.descriptionLocalized,
  });

  String? descriptionImperial;
  String? name;
  String? nameWithCount;
  String? description;
  int? bedType;
  int? count;
  dynamic descriptionLocalized;

  factory BedType.fromJson(Map<String, dynamic> json) => BedType(
        descriptionImperial: json["description_imperial"],
        name: json["name"],
        nameWithCount: json["name_with_count"],
        description: json["description"],
        bedType: json["bed_type"],
        count: json["count"],
        descriptionLocalized: json["description_localized"],
      );

  Map<String, dynamic> toJson() => {
        "description_imperial": descriptionImperial,
        "name": name,
        "name_with_count": nameWithCount,
        "description": description,
        "bed_type": bedType,
        "count": count,
        "description_localized": descriptionLocalized,
      };
}

class ChildrenAndBedsText {
  ChildrenAndBedsText({
    this.agenumervals,
    this.childrenAtTheProperty,
    this.allowChildren,
    this.cribsAndExtraBeds,
  });

  List<Agenumerval>? agenumervals;
  List<ChildrenAtTheProperty>? childrenAtTheProperty;
  int? allowChildren;
  List<ChildrenAtTheProperty>? cribsAndExtraBeds;

  factory ChildrenAndBedsText.fromJson(Map<String, dynamic> json) =>
      ChildrenAndBedsText(
        agenumervals: json["age_numervals"] == null
            ? []
            : List<Agenumerval>.from(
                json["age_numervals"]!.map((x) => Agenumerval.fromJson(x))),
        childrenAtTheProperty: json["children_at_the_property"] == null
            ? []
            : List<ChildrenAtTheProperty>.from(json["children_at_the_property"]!
                .map((x) => ChildrenAtTheProperty.fromJson(x))),
        allowChildren: json["allow_children"],
        cribsAndExtraBeds: json["cribs_and_extra_beds"] == null
            ? []
            : List<ChildrenAtTheProperty>.from(json["cribs_and_extra_beds"]!
                .map((x) => ChildrenAtTheProperty.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "age_numervals": agenumervals == null
            ? []
            : List<dynamic>.from(agenumervals!.map((x) => x.toJson())),
        "children_at_the_property": childrenAtTheProperty == null
            ? []
            : List<dynamic>.from(childrenAtTheProperty!.map((x) => x.toJson())),
        "allow_children": allowChildren,
        "cribs_and_extra_beds": cribsAndExtraBeds == null
            ? []
            : List<dynamic>.from(cribsAndExtraBeds!.map((x) => x.toJson())),
      };
}

class ChildrenAtTheProperty {
  ChildrenAtTheProperty({
    this.text,
    this.highlight,
  });

  String? text;
  int? highlight;

  factory ChildrenAtTheProperty.fromJson(Map<String, dynamic> json) =>
      ChildrenAtTheProperty(
        text: json["text"],
        highlight: json["highlight"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "highlight": highlight,
      };
}

class ExtraBed {
  ExtraBed({
    this.priceMode,
    this.id,
    this.priceType,
    this.priceModeN,
    this.price,
    this.priceTypeN,
  });

  String? priceMode;
  int? id;
  String? priceType;
  int? priceModeN;
  String? price;
  int? priceTypeN;

  factory ExtraBed.fromJson(Map<String, dynamic> json) => ExtraBed(
        priceMode: json["price_mode"],
        id: json["id"],
        priceType: json["price_type"],
        priceModeN: json["price_mode_n"],
        price: json["price"],
        priceTypeN: json["price_type_n"],
      );

  Map<String, dynamic> toJson() => {
        "price_mode": priceMode,
        "id": id,
        "price_type": priceType,
        "price_mode_n": priceModeN,
        "price": price,
        "price_type_n": priceTypeN,
      };
}

class Crib {
  Crib({
    this.priceModeN,
    this.price,
    this.priceTypeN,
    this.priceMode,
    this.priceType,
    this.id,
  });

  int? priceModeN;
  int? price;
  int? priceTypeN;
  String? priceMode;
  String? priceType;
  int? id;

  factory Crib.fromJson(Map<String, dynamic> json) => Crib(
        priceModeN: json["price_mode_n"],
        price: json["price"],
        priceTypeN: json["price_type_n"],
        priceMode: json["price_mode"],
        priceType: json["price_type"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "price_mode_n": priceModeN,
        "price": price,
        "price_type_n": priceTypeN,
        "price_mode": priceMode,
        "price_type": priceType,
        "id": id,
      };
}
