// import 'package:flutter/material.dart';
// import '../model/hotel.dart';

// class HotelFutureBuilder extends StatelessWidget {
//   final Future<HotelList> future;
//   final Widget Function(HotelList) builder;

//   const HotelFutureBuilder({
//     super.key,
//     required this.future,
//     required this.builder,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<HotelList>(
//       future: future,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           final playlistData = snapshot.data ?? HotelList();
//           return builder(playlistData);
//         } else {
//           return Container();
//         }
//       },
//     );
//   }
// }
