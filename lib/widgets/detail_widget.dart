import 'package:flutter/material.dart';

import '../model/hotel.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({
    Key? key,
    required this.block,
  }) : super(key: key);

  final Block? block;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Text(block?.name ?? '')],
      ),
    );
  }
}
