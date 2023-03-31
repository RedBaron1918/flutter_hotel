class DetailMealplan {
  DetailMealplan({
    this.currency,
    this.price,
    this.title,
    this.icon,
  });

  String? currency;
  num? price;
  String? title;
  String? icon;

  factory DetailMealplan.fromJson(Map<String, dynamic> json) => DetailMealplan(
        currency: json["currency"],
        price: json["price"],
        title: json["title"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "currency": currency,
        "price": price,
        "title": title,
        "icon": icon,
      };
}
