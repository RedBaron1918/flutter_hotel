import 'package:flutter/material.dart';
import 'package:hotelflutter/pages/detail_widget.dart';
import '../model/hotel.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({
    Key? key,
    required this.hotelData,
    required this.builder,
    required this.dir,
  }) : super(key: key);

  final HotelList hotelData;
  final Widget Function(BuildContext context, Room? room, Block? block) builder;
  final Axis dir;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      scrollDirection: dir,
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
                  room: room,
                ),
              ),
            );
          },
          child: builder(context, room, block),
        );
      },
    );
  }
}
