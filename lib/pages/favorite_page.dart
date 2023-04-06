import 'package:flutter/material.dart';
import 'package:hotelflutter/pages/detail_widget.dart';
import 'package:hotelflutter/provider/favorite_provider.dart';
import 'package:hotelflutter/widgets/cards/card_widget.dart';
import 'package:provider/provider.dart';

import '../model/models.dart';
import '../widgets/icons/circle_icon.dart';
import '../widgets/search_bar.dart';
import '../widgets/sliver_appbar_widget.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<Room> _hotels = [];
  List<Block> _blocks = [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  void _loadFavorites() async {
    final hotels = await getFavoriteHotels();
    final blocks = await getFavoriteBlocks();

    setState(() {
      _hotels = hotels;
      _blocks = blocks;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                _hotels.isNotEmpty
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 250,
                          childAspectRatio: 1 / 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 20,
                        ),
                        itemCount: _hotels.length,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final hotel = _hotels[index];
                          final block = _blocks[index];
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
