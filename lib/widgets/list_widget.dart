import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/detail_widget.dart';
import '../model/hotel.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({
    Key? key,
    required this.hotelData,
  }) : super(key: key);

  final HotelList hotelData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: hotelData.rooms?.length,
      itemBuilder: (context, index) {
        final roomId = int.parse(hotelData.rooms!.keys.elementAt(index));
        final room = hotelData.rooms?[roomId.toString()]!;
        final block = hotelData.block?.firstWhere((b) => b.roomId == roomId);
        final name = hotelData.block?[index].nameWithoutPolicy;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Card(
            color: Colors.transparent,
            child: ListTile(
              title: Text(
                name ?? '',
              ),
              leading: Image.network(
                room?.photos?[0].url640X200 ?? "loading",
                alignment: Alignment.centerLeft,
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailWidget(
                      block: block,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
