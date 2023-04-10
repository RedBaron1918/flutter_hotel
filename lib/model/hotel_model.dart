// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'models.dart';

List<HotelList> hotelListFromJson(String str) =>
    List<HotelList>.from(json.decode(str).map((x) => HotelList.fromJson(x)));

String hotelListToJson(List<HotelList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HotelList {
  HotelList({
    this.rooms,
    this.id,
    this.hotelId,
  });

  Map<String, Room>? rooms;
  List<dynamic>? id;
  int? hotelId;

  factory HotelList.fromJson(Map<String, dynamic> json) {
    final blocks = json["block"] != null
        ? List<Block>.from(json["block"]!.map((x) => Block.fromJson(x)))
        : [];

    return HotelList(
      rooms: Map.from(json["rooms"]!).map((id, room) {
        room['block'] = blocks.firstWhere((e) => e.roomId == int.parse(id));
        return MapEntry<String, Room>(id, Room.fromJson(room));
      }),
      id: Map.from(json["rooms"]!).keys.toList(),
      hotelId: json["hotel_id"],
    );
  }

  Map<String, dynamic> toJson() => {
        "rooms": Map.from(rooms!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "hotel_id": hotelId,
      };
}

enum TypesByPrice { CRIB, EXTRA_BED }

final typesByPriceValues = EnumValues(
    {"crib": TypesByPrice.CRIB, "extra_bed": TypesByPrice.EXTRA_BED});

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

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
