import 'package:flutter/material.dart';
import 'package:hotelflutter/pages/detail_widget.dart';
import 'package:hotelflutter/widgets/bigger_card.dart';
import '../model/hotel.dart';
import 'card_widget.dart';

class BiggerListWidget extends StatelessWidget {
  const BiggerListWidget({
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
            child: SizedBox(
                width: 300, child: BiggerCard(room: room, block: block)));
      },
    );
  }
}
