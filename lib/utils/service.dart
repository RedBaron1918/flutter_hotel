import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/hotel.dart';

class Services {
  static Future<HotelList> fetchHotelData(String hotelUrl) async {
    final response = await http.get(Uri.parse(hotelUrl));
    if (response.statusCode == 200) {
      print(response.body);
      final decodedResponse = jsonDecode(response.body);
      final videosList = HotelList.fromJson(decodedResponse);
      return videosList;
    } else {
      throw Exception('Failed to fetch playlist data');
    }
  }

  static Stream<HotelList> createHotelDataStream(String hotelUrl) async* {
    while (true) {
      try {
        final playlistData = await Services.fetchHotelData(hotelUrl);
        yield playlistData;
      } catch (e) {
        yield HotelList();
      }
      await Future.delayed(const Duration(minutes: 2));
    }
  }
}
