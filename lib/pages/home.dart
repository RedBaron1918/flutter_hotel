import 'package:flutter/material.dart';
import 'dart:async';
import '../model/hotel.dart';
import '../utils/service.dart';
import '../widgets/list_widget.dart';
import '../widgets/stream_bulder.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Stream<HotelList> hotelDataStream;

  @override
  void initState() {
    super.initState();
    hotelDataStream = Services.createHotelDataStream(
        'https://4d2bl2qtic.execute-api.us-east-1.amazonaws.com/v1/hotels/room-list?adults_number_by_rooms=1&checkin_date=2023-05-27&locale=en-gb&checkout_date=2023-05-28&units=metric&hotel_id=320991&currency=GEL');
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotel List'),
        backgroundColor: const Color.fromARGB(255, 37, 37, 37),
      ),
      body: HotelStreamBuilder(
        stream: hotelDataStream,
        builder: (hotelData) {
          if (hotelData.rooms != null) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  ListWidget(
                    hotelData: hotelData,
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text(' data is not available.'),
            );
          }
        },
      ),
    );
  }
}
