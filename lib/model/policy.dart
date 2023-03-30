import 'models.dart';

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
