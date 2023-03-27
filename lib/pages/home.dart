import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotelflutter/widgets/bigger_list_widget.dart';
import 'package:hotelflutter/widgets/card_widget.dart';
import 'package:hotelflutter/widgets/small_list.dart';
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
            child: FutureWidget(futureData: futureData),
          )
        ],
      ),
    );
  }
}

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({
    required this.text,
    required this.bgColor,
    required this.txtColor,
    super.key,
  });
  final String text;
  final Color bgColor;
  final Color txtColor;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: bgColor,
      floating: true,
      title: Text(
        text,
        style: TextStyle(
          color: txtColor,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.2,
        ),
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
        if (snapshot.hasError) {
          print(snapshot);
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
                height: 280,
                child:
                    BiggerListWidget(hotelData: snapshot.data ?? HotelList()),
              ),
              const IconTextWidget(
                icon: Icons.favorite,
                text: "Visitors Choice",
              ),
              SizedBox(
                height: 100,
                child: SmallList(hotelData: snapshot.data ?? HotelList()),
              )
            ],
          ),
        );
      },
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
              color: Color(0xFF333333),
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
