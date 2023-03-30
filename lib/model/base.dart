import 'models.dart';

class Base {
  Base({
    this.kind,
    this.percentage,
  });

  String? kind;
  num? percentage;

  factory Base.fromJson(Map<String, dynamic> json) => Base(
        kind: json["kind"],
        percentage: json["percentage"],
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "percentage": percentage,
      };
}
