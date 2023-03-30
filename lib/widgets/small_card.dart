import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/fade_in_image_widget.dart';
import '../model/hotel.dart';

class SmallCard extends StatefulWidget {
  const SmallCard({
    Key? key,
    required this.room,
    required this.block,
  }) : super(key: key);

  final Room? room;
  final Block? block;

  @override
  State<SmallCard> createState() => _SmallCardState();
}

class _SmallCardState extends State<SmallCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Card(
        color: const Color.fromARGB(255, 241, 241, 241),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInImageWidget(
                photo: widget.room!.photos![0].urlMax300!,
                fit: BoxFit.cover,
                height: 150,
                radius: 2,
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
                        color: Color(0xFF333333),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "\$${widget.block?.minPrice?.price}",
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
