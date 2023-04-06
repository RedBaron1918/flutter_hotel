class Photo {
  Photo({
    this.urlMax300,
    this.photoId,
    this.urlSquare60,
    this.url640X200,
    this.newOrder,
    this.ratio,
    this.urlOriginal,
    this.lastUpdateDate,
  });

  String? urlMax300;
  int? photoId;
  String? urlSquare60;
  String? url640X200;
  int? newOrder;
  double? ratio;
  String? urlOriginal;
  DateTime? lastUpdateDate;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        urlMax300: json["url_max300"],
        photoId: json["photo_id"],
        urlSquare60: json["url_square60"],
        url640X200: json["url_640x200"],
        newOrder: json["new_order"],
        ratio: json["ratio"]?.toDouble(),
        urlOriginal: json["url_original"],
        lastUpdateDate: json["last_update_date"] == null
            ? null
            : DateTime.parse(json["last_update_date"]),
      );

  Map<String, dynamic> toJson() => {
        "url_max300": urlMax300,
        "photo_id": photoId,
        "url_square60": urlSquare60,
        "url_640x200": url640X200,
        "new_order": newOrder,
        "ratio": ratio,
        "url_original": urlOriginal,
        "last_update_date": lastUpdateDate?.toIso8601String(),
      };
}
