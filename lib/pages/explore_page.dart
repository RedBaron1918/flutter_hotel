import 'package:flutter/material.dart';
import 'package:hotelflutter/utils/service.dart';
import 'package:hotelflutter/widgets/explore_card.dart';
import 'package:hotelflutter/widgets/future_widget.dart';
import 'package:hotelflutter/widgets/search_bar.dart';
import 'package:hotelflutter/widgets/sliver_appbar_widget.dart';
import '../model/hotel.dart';
import '../widgets/list_widget.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      body: CustomScrollView(
        slivers: [
          const SliverAppBarWidget(
            text: "Explore",
            bgColor: Colors.white,
            txtColor: Colors.black,
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SearchBar(),
                FutureWidget(
                    futureData: Services.futureData,
                    builder: (AsyncSnapshot<HotelList> snapshot) {
                      return ListWidget(
                        dir: Axis.vertical,
                        hotelData: snapshot.data ?? HotelList(),
                        builder: (context, room, block) {
                          return ExploreCard(room: room, block: block);
                        },
                      );
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
