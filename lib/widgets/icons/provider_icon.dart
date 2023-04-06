import 'package:flutter/material.dart';
import 'package:hotelflutter/provider/favorite_provider.dart';
import 'package:provider/provider.dart';
import '../../model/models.dart';

class ProviderIcon extends StatefulWidget {
  const ProviderIcon({
    this.iconSize = 30,
    this.height = 40,
    this.width = 40,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.red,
    required this.room,
    required this.block,
    super.key,
  });
  final Color? iconColor;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final double? iconSize;
  final Room room;
  final Block block;

  @override
  _ProviderIconState createState() => _ProviderIconState();
}

class _ProviderIconState extends State<ProviderIcon> {
  bool _isFavorite = false;

  @override
  void initState() {
    super.initState();
    _loadIsFavorite();
  }

  void _loadIsFavorite() async {
    final hotels = await getFavoriteHotels();
    final blocks = await getFavoriteBlocks();
    setState(() {
      _isFavorite =
          hotels.contains(widget.room) && blocks.contains(widget.block);
    });
  }

  void _toggleFavorite() async {
    final hotels = await getFavoriteHotels();
    final blocks = await getFavoriteBlocks();
    if (_isFavorite) {
      hotels.remove(widget.room);
      blocks.remove(widget.block);
    } else {
      hotels.add(widget.room);
      blocks.add(widget.block);
    }
    saveFavorites(hotels, blocks);
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon: _isFavorite
            ? const Icon(Icons.favorite)
            : const Icon(Icons.favorite_border_outlined),
        iconSize: widget.iconSize,
        color: widget.iconColor,
        onPressed: _toggleFavorite,
      ),
    );
  }
}
