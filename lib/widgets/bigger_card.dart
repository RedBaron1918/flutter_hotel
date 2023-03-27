import 'package:flutter/material.dart';

import '../model/hotel.dart';

class BiggerCard extends StatefulWidget {
  const BiggerCard({
    Key? key,
    required this.room,
    required this.block,
  }) : super(key: key);

  final Room? room;
  final Block? block;

  @override
  _BiggerCardState createState() => _BiggerCardState();
}

class _BiggerCardState extends State<BiggerCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            widget.room?.photos?[0].url640X200 ?? '',
            height: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.block?.nameWithoutPolicy ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Text(
                  widget.room?.description ?? '',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 99, 99, 99),
                    fontSize: 18,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
