import 'package:flutter/material.dart';
import 'package:hotelflutter/pages/detail_widget.dart';
import 'package:hotelflutter/widgets/small_card.dart';
import '../model/hotel.dart';
import 'card_widget.dart';

class SmallList extends StatelessWidget {
  const SmallList({
    Key? key,
    required this.hotelData,
  }) : super(key: key);

  final HotelList hotelData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      scrollDirection: Axis.horizontal,
      itemCount: hotelData.rooms?.length,
      itemBuilder: (context, index) {
        final roomId = int.parse(hotelData.rooms!.keys.elementAt(index));
        final room = hotelData.rooms?[roomId.toString()]!;
        final block = hotelData.block?.firstWhere((b) => b.roomId == roomId);
        return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailWidget(
                    block: block,
                  ),
                ),
              );
            },
            child: SmallCard(room: room, block: block));
      },
    );
  }
}
