import 'package:flutter/material.dart';

import '../model/hotel.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({
    super.key,
    required this.hotelData,
  });

  final HotelList hotelData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: hotelData.rooms?.length,
      itemBuilder: (context, index) {
        final test = hotelData.rooms?.values;
        print(hotelData.rooms?.values);
        return SizedBox.shrink();
        // return SizedBox(
        //   width: 100,
        //   height: 100,
        //   child: ListTile(
        //     title: Text(
        //       test?.description ?? '',
        //     ),
        //     leading: Text(
        //       test?.description ?? '',
        //     ),
        //     onTap: () {
        //       Navigator.of(context).push(
        //         MaterialPageRoute(
        //           builder: (context) => Placeholder(),
        //         ),
        //       );
        //     },
        //   ),
        // );
      },
    );
  }
}
