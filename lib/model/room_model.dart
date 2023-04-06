import 'models.dart';

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
