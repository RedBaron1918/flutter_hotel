import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../model/models.dart';

void saveFavorites(List<Room> hotels, List<Block> blocks) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('hotels', jsonEncode(hotels));
  prefs.setString('blocks', jsonEncode(blocks));
}

Future<List<Room>> getFavoriteHotels() async {
  final prefs = await SharedPreferences.getInstance();
  final hotelsString = prefs.getString('hotels');
  if (hotelsString != null) {
    return List<Room>.from(
        jsonDecode(hotelsString).map((x) => Room.fromJson(x)));
  } else {
    return [];
  }
}

Future<List<Block>> getFavoriteBlocks() async {
  final prefs = await SharedPreferences.getInstance();
  final blocksString = prefs.getString('blocks');
  if (blocksString != null) {
    return List<Block>.from(
        jsonDecode(blocksString).map((x) => Block.fromJson(x)));
  } else {
    return [];
  }
}
