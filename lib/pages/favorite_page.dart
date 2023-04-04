import 'package:flutter/material.dart';
import 'package:hotelflutter/pages/detail_widget.dart';
import 'package:hotelflutter/provider/favorite_provider.dart';
import 'package:hotelflutter/widgets/cards/card_widget.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final hotels = provider.hotels;
    final blocks = provider.blocks;
    return Scaffold(
      appBar: AppBar(
        title: const Text("favorites"),
      ),
      body: ListView.builder(
        itemCount: hotels.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final hotel = hotels[index];
          final block = blocks[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailWidget(
                    block: block,
                    room: hotel,
                  ),
                ),
              );
            },
            child: CardWidget(room: hotel, block: block),
          );
        },
      ),
    );
  }
}
