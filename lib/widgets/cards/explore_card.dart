import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/fade_in_image_widget.dart';
import 'package:hotelflutter/widgets/text_container.dart';
import '../../model/models.dart';
import '../icons/provider_icon.dart';

class ExploreCard extends StatefulWidget {
  const ExploreCard({
    Key? key,
    required this.room,
  }) : super(key: key);

  final Room? room;

  @override
  State<ExploreCard> createState() => _ExploreCardState();
}

class _ExploreCardState extends State<ExploreCard> {
  @override
  void initState() {
    super.initState();
  }

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
                    top: 8, right: 8, child: ProviderIcon(room: widget.room!)),
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
                        widget.room?.block?.nameWithoutPolicy ?? '',
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextContainer(
                        text: "\$${widget.room?.block?.minPrice?.price}",
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
