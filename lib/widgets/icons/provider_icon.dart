import 'package:flutter/material.dart';
import 'package:hotelflutter/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

import '../../model/models.dart';

class ProviderIcon extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon: provider.exists(room, block)
            ? const Icon(Icons.favorite)
            : const Icon(Icons.favorite_border_outlined),
        iconSize: iconSize,
        color: iconColor,
        onPressed: () {
          provider.toggleFavorite(room, block);
        },
      ),
    );
  }
}
