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
      throw Exception('Failed to fetch playlist data');
    }
  }
}
