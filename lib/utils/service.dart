import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/hotel.dart';

final Map<String, HotelList> _cachedResponses = {};

class Services {
  static Future<HotelList> fetchHotelData(String hotelUrl) async {
    if (_cachedResponses.containsKey(hotelUrl)) {
      return Future.value(_cachedResponses[hotelUrl]!);
    }

    final response = await http.get(Uri.parse(hotelUrl));
    if (response.statusCode == 200) {
      final decodedResponse = jsonDecode(response.body);
      final videosList = HotelList.fromJson(decodedResponse[0]);
      _cachedResponses[hotelUrl] = videosList;
      return videosList;
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  static Future<HotelList> futureData = Future<HotelList>(() =>
      Services.fetchHotelData(
          "https://4d2bl2qtic.execute-api.us-east-1.amazonaws.com/v1/hotels/room-list?adults_number_by_rooms=1&checkin_date=2023-05-27&locale=en-gb&checkout_date=2023-05-28&units=metric&hotel_id=320991&currency=GEL"));
}
