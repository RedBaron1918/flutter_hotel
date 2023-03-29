import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/bigger_card.dart';
import 'package:hotelflutter/widgets/card_widget.dart';
import 'package:hotelflutter/widgets/small_card.dart';
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
              futureData: Services.futureData,
              builder: (AsyncSnapshot<HotelList> snapshot) {
                return Padding(
                  padding: const EdgeInsets.all(7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const IconTextWidget(
                        icon: Icons.search,
                        text: "Most Searched",
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 240,
                        child: ListWidget(
                          dir: Axis.horizontal,
                          hotelData: snapshot.data ?? HotelList(),
                          builder: (context, room, block) {
                            return CardWidget(room: room, block: block);
                          },
                        ),
                      ),
                      const IconTextWidget(
                        color: Colors.red,
                        icon: Icons.star,
                        text: "Featured",
                      ),
                      SizedBox(
                        height: 284,
                        child: ListWidget(
                          dir: Axis.horizontal,
                          hotelData: snapshot.data ?? HotelList(),
                          builder: (context, room, block) {
                            return BiggerCard(room: room, block: block);
                          },
                        ),
                      ),
                      const IconTextWidget(
                        color: Colors.redAccent,
                        icon: Icons.favorite,
                        text: "Visitors Choice",
                      ),
                      SizedBox(
                        height: 100,
                        child: ListWidget(
                          dir: Axis.horizontal,
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
