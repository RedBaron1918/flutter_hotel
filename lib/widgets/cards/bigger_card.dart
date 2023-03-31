import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/fade_in_image_widget.dart';
import '../../model/models.dart';

class BiggerCard extends StatefulWidget {
  const BiggerCard({
    Key? key,
    required this.room,
    required this.block,
  }) : super(key: key);

  final Room? room;
  final Block? block;

  @override
  State<BiggerCard> createState() => _BiggerCardState();
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
      child: Container(
        width: 280,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInImageWidget(
              photo: widget.room!.photos![0].url640X200!,
              fit: BoxFit.cover,
              height: 150,
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
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
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
