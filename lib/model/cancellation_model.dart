import 'models.dart';

class Cancellation {
  Cancellation({
    this.description,
    this.timeline,
    this.nonRefundableAnymore,
    this.typeTranslation,
    this.guaranteedNonRefundable,
    this.bucket,
    this.type,
  });

  String? description;
  Timeline? timeline;
  int? nonRefundableAnymore;
  String? typeTranslation;
  int? guaranteedNonRefundable;
  String? bucket;
  String? type;

  factory Cancellation.fromJson(Map<String, dynamic> json) => Cancellation(
        description: json["description"],
        timeline: json["timeline"] == null
            ? null
            : Timeline.fromJson(json["timeline"]),
        nonRefundableAnymore: json["non_refundable_anymore"],
        typeTranslation: json["type_translation"],
        guaranteedNonRefundable: json["guaranteed_non_refundable"],
        bucket: json["bucket"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "timeline": timeline?.toJson(),
        "non_refundable_anymore": nonRefundableAnymore,
        "type_translation": typeTranslation,
        "guaranteed_non_refundable": guaranteedNonRefundable,
        "bucket": bucket,
        "type": type,
      };
}
