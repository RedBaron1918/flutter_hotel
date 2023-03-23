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
        final data = hotelData.rooms?.values.elementAt(index);
        final name = hotelData.block?[index].nameWithoutPolicy;
        print(hotelData.totalBlocks);
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
                      imageUrl: data?.photos?[0].url640X200 ?? '',
                      description: data?.description ?? '',
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

class DetailWidget extends StatelessWidget {
  const DetailWidget({
    Key? key,
    required this.imageUrl,
    required this.description,
  }) : super(key: key);

  final String imageUrl;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            imageUrl,
          ),
          Text(
            description,
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
