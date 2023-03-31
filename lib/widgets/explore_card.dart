import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/circle_icon.dart';
import 'package:hotelflutter/widgets/fade_in_image_widget.dart';
import 'package:hotelflutter/widgets/text_container.dart';
import '../model/models.dart';

class ExploreCard extends StatefulWidget {
  const ExploreCard({
    Key? key,
    required this.room,
    required this.block,
  }) : super(key: key);

  final Room? room;
  final Block? block;

  @override
  State<ExploreCard> createState() => _ExploreCardState();
}

class _ExploreCardState extends State<ExploreCard> {
  @override
  void initState() {
    super.initState();
  }

  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Container(
        width: 280,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                FadeInImageWidget(
                  height: 160,
                  photo: widget.room!.photos![0].url640X200!,
                  radius: 6,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: CircleIcon(
                    icon: _isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border_outlined,
                    callBack: () {
                      setState(() {
                        _isFavorite = !_isFavorite;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.block?.nameWithoutPolicy ?? '',
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextContainer(
                        text: "\$${widget.block?.minPrice?.price}",
                        fontSize: 14,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.room?.description ?? '',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 133, 133, 133),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
