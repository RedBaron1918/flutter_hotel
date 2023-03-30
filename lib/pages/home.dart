import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/bigger_card.dart';
import 'package:hotelflutter/widgets/card_widget.dart';
import 'package:hotelflutter/widgets/circle_icon.dart';
import 'package:hotelflutter/widgets/search_bar.dart';
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      extendBody: true,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverAppBarWidget(
              text: '',
              bgColor: Color.fromARGB(255, 250, 250, 250),
              txtColor: Colors.black,
            ),
            SliverToBoxAdapter(
              child: FutureWidget(
                futureData: Services.futureData,
                builder: (AsyncSnapshot<HotelList> snapshot) {
                  return Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 160,
                          child: Text(
                            'Pick best Hotels for you',
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const IconTextWidget(
                          icon: Icons.location_on,
                          text: "Batumi",
                          iconSize: 12,
                          textSize: 14,
                          color: Colors.redAccent,
                          textColor: Colors.redAccent,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Expanded(child: SearchBar()),
                            CircleIcon(icon: Icons.tune),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const IconTextWidget(
                          icon: Icons.search,
                          text: "Most Searched",
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 260,
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
      ),
    );
  }
}
