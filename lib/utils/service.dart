import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../model/hotel_model.dart';

const String cacheKey = 'hotel_list';

HotelList? hotelListResponse;

class Services {
  static Future<HotelList> fetchHotelData(String hotelUrl) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(cacheKey)) {
      final cache = jsonDecode(prefs.getString(cacheKey)!);
      final expiresAt = DateTime.parse(cache['expiresAt']);
      if (expiresAt.isAfter(DateTime.now())) {
        hotelListResponse =
            HotelList.fromJson(jsonDecode(cache['hotelList'])[0]);

        return hotelListResponse!;
      }
    }

    final response = await http.get(Uri.parse(hotelUrl));

    if (response.statusCode == 200) {
      final decodedResponse = jsonDecode(response.body);
      final hotelList = HotelList.fromJson(decodedResponse[0]);

      prefs.setString(
          cacheKey,
          jsonEncode({
            'expiresAt':
                DateTime.now().add(const Duration(hours: 1)).toString(),
            'hotelList': response.body
          }));

      hotelListResponse = hotelList;
      return hotelList;
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  static Future<HotelList> futureData = Future<HotelList>(() =>
      Services.fetchHotelData(
          "https://4d2bl2qtic.execute-api.us-east-1.amazonaws.com/v1/hotels/room-list?adults_number_by_rooms=1&checkin_date=2023-05-27&locale=en-gb&checkout_date=2023-05-28&units=metric&hotel_id=320991&currency=GEL"));
}
