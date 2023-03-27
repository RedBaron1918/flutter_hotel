import 'package:flutter/material.dart';
import 'dart:async';
import '../model/hotel.dart';
import '../utils/service.dart';
import '../widgets/list_widget.dart';

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
      body: FutureWidget(futureData: futureData),
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
        if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting ||
            snapshot.connectionState == ConnectionState.none) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(7),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const IconTextWidget(
                  icon: Icons.search,
                  text: "Most Searched",
                ),
                ListContainer(
                  snapshot: snapshot,
                  height: 240,
                ),
                const IconTextWidget(
                  icon: Icons.star,
                  text: "Most Visited",
                ),
                ListContainer(
                  snapshot: snapshot,
                  height: 240,
                ),
                const IconTextWidget(
                  icon: Icons.favorite,
                  text: "Visitors Choice",
                ),
                ListContainer(
                  snapshot: snapshot,
                  height: 240,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ListContainer extends StatelessWidget {
  const ListContainer({
    required this.height,
    required this.snapshot,
    super.key,
  });
  final dynamic snapshot;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListWidget(hotelData: snapshot.data ?? HotelList()),
    );
  }
}

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    required this.icon,
    required this.text,
    super.key,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
