import 'package:flutter/material.dart';
import '../model/hotel.dart';

class HotelStreamBuilder extends StatelessWidget {
  final Stream<HotelList> stream;
  final Widget Function(HotelList) builder;

  const HotelStreamBuilder({
    super.key,
    required this.stream,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HotelList>(
      stream: stream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final playlistData = snapshot.data!;
          return builder(playlistData);
        } else {
          return Container();
        }
      },
    );
  }
}
