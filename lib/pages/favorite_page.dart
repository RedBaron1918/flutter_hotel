import 'package:flutter/material.dart';
import 'package:hotelflutter/pages/detail_widget.dart';
import 'package:hotelflutter/provider/favorite_provider.dart';
import 'package:hotelflutter/widgets/cards/card_widget.dart';
import 'package:hotelflutter/widgets/cards/explore_card.dart';
import 'package:provider/provider.dart';

import '../widgets/icons/circle_icon.dart';
import '../widgets/search_bar.dart';
import '../widgets/sliver_appbar_widget.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final hotels = provider.hotels;
    final blocks = provider.blocks;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      body: CustomScrollView(
        slivers: [
          const SliverAppBarWidget(
            text: "Favorites",
            bgColor: Colors.white,
            txtColor: Colors.black,
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Expanded(child: SearchBar()),
                      CircleIcon(icon: Icons.tune),
                    ],
                  ),
                ),
                hotels.isNotEmpty
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 250,
                                childAspectRatio: 1 / 2,
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 20),
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
                      )
                    : const Center(
                        child: Text(
                          "you have no Favorites yet!",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
