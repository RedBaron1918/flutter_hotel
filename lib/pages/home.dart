import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/bigger_card.dart';
import 'package:hotelflutter/widgets/card_widget.dart';
import 'package:hotelflutter/widgets/small_card.dart';
import 'dart:async';
import '../model/hotel.dart';
import '../utils/service.dart';
import '../widgets/future_widget.dart';
import '../widgets/icon_text_widget.dart';
import '../widgets/list_widget.dart';
import '../widgets/sliver_appbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  final Future<HotelList> futureData = Future<HotelList>.delayed(
      const Duration(seconds: 2),
      () => Services.fetchHotelData(
          "https://4d2bl2qtic.execute-api.us-east-1.amazonaws.com/v1/hotels/room-list?adults_number_by_rooms=1&checkin_date=2023-05-27&locale=en-gb&checkout_date=2023-05-28&units=metric&hotel_id=320991&currency=GEL"));

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverAppBarWidget(
            text: 'Home',
            bgColor: Colors.white,
            txtColor: Colors.black,
          ),
          SliverToBoxAdapter(
            child: FutureWidget(
              futureData: futureData,
              builder: (AsyncSnapshot<HotelList> snapshot) {
                return Padding(
                  padding: const EdgeInsets.all(7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const IconTextWidget(
                        icon: Icons.search,
                        text: "Most Searched",
                      ),
                      SizedBox(
                        height: 240,
                        child: ListWidget(
                          hotelData: snapshot.data ?? HotelList(),
                          builder: (context, room, block) {
                            return CardWidget(room: room, block: block);
                          },
                        ),
                      ),
                      const IconTextWidget(
                        icon: Icons.star,
                        text: "Featured",
                      ),
                      SizedBox(
                          height: 284,
                          child: ListWidget(
                            hotelData: snapshot.data ?? HotelList(),
                            builder: (context, room, block) {
                              return BiggerCard(room: room, block: block);
                            },
                          )),
                      const IconTextWidget(
                        icon: Icons.favorite,
                        text: "Visitors Choice",
                      ),
                      SizedBox(
                        height: 100,
                        child: ListWidget(
                          hotelData: snapshot.data ?? HotelList(),
                          builder: (context, room, block) {
                            return SmallCard(room: room, block: block);
                          },
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
