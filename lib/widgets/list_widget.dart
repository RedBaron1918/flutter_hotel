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
        final data = hotelData.rooms?.values.elementAt(index);
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
                data?.photos?[0].url640X200 ?? "loading",
                alignment: Alignment.centerLeft,
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailWidget(
                      data: data,
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
