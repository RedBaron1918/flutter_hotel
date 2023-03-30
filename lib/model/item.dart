import 'models.dart';

class Item {
  Item({
    this.details,
    this.itemAmount,
    this.name,
    this.base,
    this.inclusionType,
    this.kind,
  });

  String? details;
  AllInclusiveAmount? itemAmount;
  String? name;
  Base? base;
  String? inclusionType;
  String? kind;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        details: json["details"],
        itemAmount: json["item_amount"] == null
            ? null
            : AllInclusiveAmount.fromJson(json["item_amount"]),
        name: json["name"],
        base: json["base"] == null ? null : Base.fromJson(json["base"]),
        inclusionType: json["inclusion_type"],
        kind: json["kind"],
      );

  Map<String, dynamic> toJson() => {
        "details": details,
        "item_amount": itemAmount?.toJson(),
        "name": name,
        "base": base?.toJson(),
        "inclusion_type": inclusionType,
        "kind": kind,
      };
}
