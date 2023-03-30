import 'models.dart';

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
