import 'package:flutter/material.dart';

import '../model/hotel.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Room? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            data?.photos?[0].url640X200 ?? '',
          ),
          Text(
            data?.description ?? '',
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
