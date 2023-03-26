import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotelflutter/widgets/bottom_navigation.dart';
import 'package:hotelflutter/widgets/scroll_to_hide.dart';
import 'dart:async';
import '../model/hotel.dart';
import '../utils/service.dart';
import '../widgets/list_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Future<HotelList> futureData = Future<HotelList>.delayed(
      const Duration(seconds: 2),
      () => Services.fetchHotelData(
          "https://4d2bl2qtic.execute-api.us-east-1.amazonaws.com/v1/hotels/room-list?adults_number_by_rooms=1&checkin_date=2023-05-27&locale=en-gb&checkout_date=2023-05-28&units=metric&hotel_id=320991&currency=GEL"));

  late final ScrollController controller = ScrollController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ScrollToHideWidget(
        controller: controller,
        child: const MyBottomNavigationBar(),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        controller: controller,
        slivers: [
          const SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.white,
            floating: true,
            title: Text(
              'HotelList',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: FutureWidget(futureData: futureData),
          )
        ],
      ),
    );
  }
}

class FutureWidget extends StatelessWidget {
  const FutureWidget({
    super.key,
    required this.futureData,
  });

  final Future<HotelList> futureData;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureData,
      builder: (context, AsyncSnapshot<HotelList> snapshot) {
        if (snapshot.hasData) {
          return Padding(
            padding: const EdgeInsets.all(7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(Icons.search),
                    Text(
                      "Most Searched",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 240,
                  child: ListWidget(
                    hotelData: snapshot.data ?? HotelList(),
                  ),
                ),
                Row(
                  children: const [
                    Icon(Icons.star),
                    Text(
                      "Most Visited",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 240,
                  child: ListWidget(
                    hotelData: snapshot.data ?? HotelList(),
                  ),
                ),
                Row(
                  children: const [
                    Icon(Icons.favorite),
                    Text(
                      "Visitors Choice",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 240,
                  child: ListWidget(
                    hotelData: snapshot.data ?? HotelList(),
                  ),
                ),
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
