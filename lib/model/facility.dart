import 'models.dart';

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
