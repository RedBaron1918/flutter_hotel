import 'package:flutter/material.dart';
import 'package:hotelflutter/provider/favorite_provider.dart'
    as favorite_provider;
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
    super.key,
  });
  final Color? iconColor;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final double? iconSize;
  final Room room;

  @override
  _ProviderIconState createState() => _ProviderIconState();
}

class _ProviderIconState extends State<ProviderIcon> {
  bool _isFavorite = false;
  List<Room?> favorites = [];
  @override
  void initState() {
    super.initState();
    isFavorite();
  }

  void isFavorite() async {
    _isFavorite = await favorite_provider.isFavorite(widget.room);
    setState(() {});
  }

  void _toggleFavorite() async {
    favorite_provider.saveFavorite(widget.room.block!.roomId.toString());
    _isFavorite = !_isFavorite;
    setState(() {});
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
