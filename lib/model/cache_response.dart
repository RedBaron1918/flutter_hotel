import 'package:hotelflutter/model/hotel_model.dart';

class CachedResponse {
  final DateTime expiresAt;
  final HotelList hotelList;

  CachedResponse({required this.hotelList, required this.expiresAt});

  factory CachedResponse.fromJson(Map<String, dynamic> json) {
    return CachedResponse(
        hotelList: HotelList.fromJson(json['hotelList']),
        expiresAt: json['expiresAt']);
  }
  toJson() => {
        'expiresAt': expiresAt.toString(),
        'hotelList': hotelList,
      };
}
