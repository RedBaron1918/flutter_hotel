import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/hotel.dart';

class Services {
  static Future<HotelList> fetchHotelData(String hotelUrl) async {
    final response = await http.get(Uri.parse(hotelUrl));
    if (response.statusCode == 200) {
      final decodedResponse = jsonDecode(response.body);
      final videosList = HotelList.fromJson(decodedResponse[0]);
      return videosList;
    } else {
      throw Exception('Failed to fetch playlist data');
    }
  }
}
