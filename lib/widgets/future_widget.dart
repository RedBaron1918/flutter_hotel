import 'package:flutter/material.dart';
import '../model/hotel.dart';

class FutureWidget extends StatelessWidget {
  const FutureWidget({
    Key? key,
    required this.futureData,
    required this.builder,
  }) : super(key: key);

  final Future<HotelList> futureData;
  final Widget Function(AsyncSnapshot<HotelList>) builder;

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

        return builder(snapshot);
      },
    );
  }
}
