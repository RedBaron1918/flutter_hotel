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
        final test = hotelData.rooms![index];
        return SizedBox(
          width: 100,
          height: 100,
          child: ListTile(
            title: Text(
              test?.description ?? '',
            ),
            leading: Image.network(
              test?.photos![index].urlOriginal ?? '',
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Placeholder(),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
