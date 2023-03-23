// To parse this JSON data, do
//
//     final hotelList = hotelListFromJson(jsonString);

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
    this.name,
  });
  String? name;

  factory Block.fromJson(Map<String, dynamic> json) => Block(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

class Room {
  Room({
    this.description,
    this.photos,
  });

  String? description;
  List<Photo>? photos;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        description: json["description"],
        photos: json["photos"] == null
            ? []
            : List<Photo>.from(json["photos"]!.map((x) => Photo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "photos": photos == null
            ? []
            : List<dynamic>.from(photos!.map((x) => x.toJson())),
      };
}

class Photo {
  Photo({
    this.url640X200,
    this.ratio,
    this.lastUpdateDate,
    this.newOrder,
    this.urlMax300,
    this.urlSquare60,
    this.urlOriginal,
    this.photoId,
  });

  String? url640X200;
  double? ratio;
  DateTime? lastUpdateDate;
  int? newOrder;
  String? urlMax300;
  String? urlSquare60;
  String? urlOriginal;
  int? photoId;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        url640X200: json["url_640x200"],
        ratio: json["ratio"]?.toDouble(),
        lastUpdateDate: json["last_update_date"] == null
            ? null
            : DateTime.parse(json["last_update_date"]),
        newOrder: json["new_order"],
        urlMax300: json["url_max300"],
        urlSquare60: json["url_square60"],
        urlOriginal: json["url_original"],
        photoId: json["photo_id"],
      );

  Map<String, dynamic> toJson() => {
        "url_640x200": url640X200,
        "ratio": ratio,
        "last_update_date": lastUpdateDate?.toIso8601String(),
        "new_order": newOrder,
        "url_max300": urlMax300,
        "url_square60": urlSquare60,
        "url_original": urlOriginal,
        "photo_id": photoId,
      };
}
