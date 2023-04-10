import 'package:hotelflutter/utils/service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/models.dart';

const String cacheKey = 'favoriteIds';

void saveFavorite(String roomId) async {
  final prefs = await SharedPreferences.getInstance();
  final List<String> favorites = prefs.containsKey(cacheKey)
      ? prefs.getStringList(cacheKey) as List<String>
      : <String>[];

  favorites.contains(roomId) ? favorites.remove(roomId) : favorites.add(roomId);

  prefs.setStringList(cacheKey, favorites);
}

Future<bool> isFavorite(Room room) async {
  return (await getFavorites()).contains(room);
}

Future<List<Room?>> getFavorites() async {
  final prefs = await SharedPreferences.getInstance();
  final favorites = prefs.containsKey(cacheKey)
      ? prefs.getStringList(cacheKey) as List<String>
      : <String>[];

  return hotelListResponse!.rooms!.entries
      .map((element) {
        if (favorites.contains(element.key)) {
          return element.value;
        }
      })
      .toList()
      .where((element) => element != null)
      .toList();
}
