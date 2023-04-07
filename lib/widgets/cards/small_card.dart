import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/fade_in_image_widget.dart';
import 'package:hotelflutter/widgets/text_container.dart';
import '../../model/models.dart';

class SmallCard extends StatefulWidget {
  const SmallCard({
    Key? key,
    required this.room,
  }) : super(key: key);

  final Room? room;

  @override
  State<SmallCard> createState() => _SmallCardState();
}

class _SmallCardState extends State<SmallCard> {
  String _nameWithoutPolocyShort = "";
  @override
  void initState() {
    super.initState();
    _initializenameWithoutPolocy();
  }

  void _initializenameWithoutPolocy() {
    String nameWithoutPolocy = widget.room?.block?.nameWithoutPolicy ?? '';
    _nameWithoutPolocyShort = nameWithoutPolocy.length >= 13
        ? "${nameWithoutPolocy.substring(0, 13)}..."
        : nameWithoutPolocy;
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
                      _nameWithoutPolocyShort,
                      style: const TextStyle(
                        color: Color(0xFF333333),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    TextContainer(
                        text: "\$${widget.room?.block?.minPrice?.price}",
                        fontSize: 11),
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
