import 'package:flutter/material.dart';
import '../model/models.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<Room> _hotels = [];
  List<Room> get hotels => _hotels;
  final List<Block> _blocks = [];
  List<Block> get blocks => _blocks;
  void toggleFavorite(Room hotel, Block block) {
    final isExist = _hotels.contains(hotel) && _blocks.contains(block);
    if (isExist) {
      _hotels.remove(hotel);
      _blocks.remove(block);
    } else {
      _hotels.add(hotel);
      _blocks.add(block);
    }
    notifyListeners();
  }

  bool isExist(Room hotel, Block block) {
    final isExist = _hotels.contains(hotel) && _blocks.contains(block);
    return isExist;
  }
}
