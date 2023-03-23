import 'dart:convert';

List<HotelList> hotelListFromJson(String str) =>
    List<HotelList>.from(json.decode(str).map((x) => HotelList.fromJson(x)));

String hotelListToJson(List<HotelList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HotelList {
  HotelList({
    this.totalBlocks,
    this.rooms,
    this.block,
    this.hotelId,
  });

  int? totalBlocks;
  Map<String, Room>? rooms;
  List<Block>? block;
  int? hotelId;

  factory HotelList.fromJson(Map<String, dynamic> json) => HotelList(
        totalBlocks: json["total_blocks"],
        rooms: Map.from(json["rooms"]!)
            .map((k, v) => MapEntry<String, Room>(k, Room.fromJson(v))),
        block: json["block"] == null
            ? []
            : List<Block>.from(json["block"]!.map((x) => Block.fromJson(x))),
        hotelId: json["hotel_id"],
      );

  Map<String, dynamic> toJson() => {
        "total_blocks": totalBlocks,
        "rooms": Map.from(rooms!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "block": block == null
            ? []
            : List<dynamic>.from(block!.map((x) => x.toJson())),
        "hotel_id": hotelId,
      };
}

class Block {
  Block({
    this.nameWithoutPolicy,
    this.name,
  });
  String? name;
  String? nameWithoutPolicy;

  factory Block.fromJson(Map<String, dynamic> json) => Block(
        name: json["name"],
        nameWithoutPolicy: json["name_without_policy"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "name_without_policy": nameWithoutPolicy,
      };
}

class Room {
  Room({
    this.photosMaySorted,
    this.highlights,
    this.isHighFloorGuaranteed,
    this.childrenAndBedsText,
    this.privateBathroomCount,
    this.photos,
    this.facilities,
    this.description,
    this.bedConfigurations,
    this.privateBathroomHighlight,
  });

  int? photosMaySorted;
  List<Highlight>? highlights;
  int? isHighFloorGuaranteed;
  ChildrenAndBedsText? childrenAndBedsText;
  int? privateBathroomCount;
  List<Photo>? photos;
  List<Facility>? facilities;
  String? description;
  List<BedConfiguration>? bedConfigurations;
  PrivateBathroomHighlight? privateBathroomHighlight;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        photosMaySorted: json["photos_may_sorted"],
        highlights: json["highlights"] == null
            ? []
            : List<Highlight>.from(
                json["highlights"]!.map((x) => Highlight.fromJson(x))),
        isHighFloorGuaranteed: json["is_high_floor_guaranteed"],
        childrenAndBedsText: json["children_and_beds_text"] == null
            ? null
            : ChildrenAndBedsText.fromJson(json["children_and_beds_text"]),
        privateBathroomCount: json["private_bathroom_count"],
        photos: json["photos"] == null
            ? []
            : List<Photo>.from(json["photos"]!.map((x) => Photo.fromJson(x))),
        facilities: json["facilities"] == null
            ? []
            : List<Facility>.from(
                json["facilities"]!.map((x) => Facility.fromJson(x))),
        description: json["description"],
        bedConfigurations: json["bed_configurations"] == null
            ? []
            : List<BedConfiguration>.from(json["bed_configurations"]!
                .map((x) => BedConfiguration.fromJson(x))),
        privateBathroomHighlight: json["private_bathroom_highlight"] == null
            ? null
            : PrivateBathroomHighlight.fromJson(
                json["private_bathroom_highlight"]),
      );

  Map<String, dynamic> toJson() => {
        "photos_may_sorted": photosMaySorted,
        "highlights": highlights == null
            ? []
            : List<dynamic>.from(highlights!.map((x) => x.toJson())),
        "is_high_floor_guaranteed": isHighFloorGuaranteed,
        "children_and_beds_text": childrenAndBedsText?.toJson(),
        "private_bathroom_count": privateBathroomCount,
        "photos": photos == null
            ? []
            : List<dynamic>.from(photos!.map((x) => x.toJson())),
        "facilities": facilities == null
            ? []
            : List<dynamic>.from(facilities!.map((x) => x.toJson())),
        "description": description,
        "bed_configurations": bedConfigurations == null
            ? []
            : List<dynamic>.from(bedConfigurations!.map((x) => x.toJson())),
        "private_bathroom_highlight": privateBathroomHighlight?.toJson(),
      };
}

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
    this.ageIntervals,
    this.childrenAtTheProperty,
    this.allowChildren,
    this.cribsAndExtraBeds,
  });

  List<AgeInterval>? ageIntervals;
  List<ChildrenAtTheProperty>? childrenAtTheProperty;
  int? allowChildren;
  List<ChildrenAtTheProperty>? cribsAndExtraBeds;

  factory ChildrenAndBedsText.fromJson(Map<String, dynamic> json) =>
      ChildrenAndBedsText(
        ageIntervals: json["age_intervals"] == null
            ? []
            : List<AgeInterval>.from(
                json["age_intervals"]!.map((x) => AgeInterval.fromJson(x))),
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
        "age_intervals": ageIntervals == null
            ? []
            : List<dynamic>.from(ageIntervals!.map((x) => x.toJson())),
        "children_at_the_property": childrenAtTheProperty == null
            ? []
            : List<dynamic>.from(childrenAtTheProperty!.map((x) => x.toJson())),
        "allow_children": allowChildren,
        "cribs_and_extra_beds": cribsAndExtraBeds == null
            ? []
            : List<dynamic>.from(cribsAndExtraBeds!.map((x) => x.toJson())),
      };
}

class AgeInterval {
  AgeInterval({
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

  factory AgeInterval.fromJson(Map<String, dynamic> json) => AgeInterval(
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

enum TypesByPrice { CRIB, EXTRA_BED }

final typesByPriceValues = EnumValues(
    {"crib": TypesByPrice.CRIB, "extra_bed": TypesByPrice.EXTRA_BED});

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

class Facility {
  Facility({
    this.altFacilitytypeName,
    this.id,
    this.altFacilitytypeId,
    this.name,
    this.facilitytypeId,
    this.facilitytypeName,
  });

  AltFacilitytypeName? altFacilitytypeName;
  int? id;
  int? altFacilitytypeId;
  String? name;
  int? facilitytypeId;
  FacilitytypeName? facilitytypeName;

  factory Facility.fromJson(Map<String, dynamic> json) => Facility(
        altFacilitytypeName:
            altFacilitytypeNameValues.map[json["alt_facilitytype_name"]]!,
        id: json["id"],
        altFacilitytypeId: json["alt_facilitytype_id"],
        name: json["name"],
        facilitytypeId: json["facilitytype_id"],
        facilitytypeName:
            facilitytypeNameValues.map[json["facilitytype_name"]]!,
      );

  Map<String, dynamic> toJson() => {
        "alt_facilitytype_name":
            altFacilitytypeNameValues.reverse[altFacilitytypeName],
        "id": id,
        "alt_facilitytype_id": altFacilitytypeId,
        "name": name,
        "facilitytype_id": facilitytypeId,
        "facilitytype_name": facilitytypeNameValues.reverse[facilitytypeName],
      };
}

enum AltFacilitytypeName {
  GENERAL,
  ACCESSIBILITY,
  MEDIA_TECHNOLOGY,
  SERVICES,
  BATHROOM,
  ROOM_AMENITIES,
  FOOD_DRINK,
  BEDROOM,
  VIEW,
  KITCHEN,
  LIVING_AREA,
  ACTIVITIES
}

final altFacilitytypeNameValues = EnumValues({
  "Accessibility": AltFacilitytypeName.ACCESSIBILITY,
  "Activities": AltFacilitytypeName.ACTIVITIES,
  "Bathroom": AltFacilitytypeName.BATHROOM,
  "Bedroom": AltFacilitytypeName.BEDROOM,
  "Food & Drink": AltFacilitytypeName.FOOD_DRINK,
  "General": AltFacilitytypeName.GENERAL,
  "Kitchen": AltFacilitytypeName.KITCHEN,
  "Living Area": AltFacilitytypeName.LIVING_AREA,
  "Media & Technology": AltFacilitytypeName.MEDIA_TECHNOLOGY,
  "Room Amenities": AltFacilitytypeName.ROOM_AMENITIES,
  "Services": AltFacilitytypeName.SERVICES,
  "View": AltFacilitytypeName.VIEW
});

enum FacilitytypeName {
  MEDIA_TECHNOLOGY,
  ROOM_AMENITIES,
  ACCESSIBILITY,
  SERVICES_EXTRAS,
  BATHROOM,
  FOOD_DRINK,
  OUTDOOR_VIEW
}

final facilitytypeNameValues = EnumValues({
  "Accessibility": FacilitytypeName.ACCESSIBILITY,
  "Bathroom": FacilitytypeName.BATHROOM,
  "Food & Drink": FacilitytypeName.FOOD_DRINK,
  "Media & Technology": FacilitytypeName.MEDIA_TECHNOLOGY,
  "Outdoor & View": FacilitytypeName.OUTDOOR_VIEW,
  "Room Amenities": FacilitytypeName.ROOM_AMENITIES,
  "Services & Extras": FacilitytypeName.SERVICES_EXTRAS
});

class Highlight {
  Highlight({
    this.icon,
    this.translatedName,
    this.id,
  });

  String? icon;
  String? translatedName;
  int? id;

  factory Highlight.fromJson(Map<String, dynamic> json) => Highlight(
        icon: json["icon"],
        translatedName: json["translated_name"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "translated_name": translatedName,
        "id": id,
      };
}

class Photo {
  Photo({
    this.urlMax300,
    this.photoId,
    this.urlSquare60,
    this.url640X200,
    this.newOrder,
    this.ratio,
    this.urlOriginal,
    this.lastUpdateDate,
  });

  String? urlMax300;
  int? photoId;
  String? urlSquare60;
  String? url640X200;
  int? newOrder;
  double? ratio;
  String? urlOriginal;
  DateTime? lastUpdateDate;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        urlMax300: json["url_max300"],
        photoId: json["photo_id"],
        urlSquare60: json["url_square60"],
        url640X200: json["url_640x200"],
        newOrder: json["new_order"],
        ratio: json["ratio"]?.toDouble(),
        urlOriginal: json["url_original"],
        lastUpdateDate: json["last_update_date"] == null
            ? null
            : DateTime.parse(json["last_update_date"]),
      );

  Map<String, dynamic> toJson() => {
        "url_max300": urlMax300,
        "photo_id": photoId,
        "url_square60": urlSquare60,
        "url_640x200": url640X200,
        "new_order": newOrder,
        "ratio": ratio,
        "url_original": urlOriginal,
        "last_update_date": lastUpdateDate?.toIso8601String(),
      };
}

class PrivateBathroomHighlight {
  PrivateBathroomHighlight({
    this.hasHighlight,
    this.text,
  });

  int? hasHighlight;
  String? text;

  factory PrivateBathroomHighlight.fromJson(Map<String, dynamic> json) =>
      PrivateBathroomHighlight(
        hasHighlight: json["has_highlight"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "has_highlight": hasHighlight,
        "text": text,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
