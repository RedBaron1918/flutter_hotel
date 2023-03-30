import 'models.dart';

class BlockText {
  BlockText({
    this.policies,
  });

  List<Policy>? policies;

  factory BlockText.fromJson(Map<String, dynamic> json) => BlockText(
        policies: json["policies"] == null
            ? []
            : List<Policy>.from(
                json["policies"]!.map((x) => Policy.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "policies": policies == null
            ? []
            : List<dynamic>.from(policies!.map((x) => x.toJson())),
      };
}

class Policy {
  Policy({
    this.policyClass,
    this.content,
    this.mealplanVector,
    this.price,
    this.currencycode,
  });

  String? policyClass;
  String? content;
  String? mealplanVector;
  num? price;
  String? currencycode;

  factory Policy.fromJson(Map<String, dynamic> json) => Policy(
        policyClass: json["class"],
        content: json["content"],
        mealplanVector: json["mealplan_vector"],
        price: json["price"],
        currencycode: json["currencycode"],
      );

  Map<String, dynamic> toJson() => {
        "class": policyClass,
        "content": content,
        "mealplan_vector": mealplanVector,
        "price": price,
        "currencycode": currencycode,
      };
}
