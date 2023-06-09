import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/icons/circle_icon.dart';
import 'package:hotelflutter/widgets/fade_in_image_widget.dart';
import 'package:hotelflutter/widgets/icons/provider_icon.dart';
import 'package:hotelflutter/widgets/text_container.dart';
import '../../model/models.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    Key? key,
    required this.room,
  }) : super(key: key);

  final Room? room;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<CircleIcon> icons = const [
      CircleIcon(
        icon: Icons.bed,
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        iconColor: Color.fromARGB(255, 255, 124, 124),
        iconSize: 18,
      ),
      CircleIcon(
        icon: Icons.wifi,
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        iconColor: Color.fromARGB(255, 255, 124, 124),
        iconSize: 18,
      ),
      CircleIcon(
        icon: Icons.directions_car_rounded,
        iconSize: 18,
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        iconColor: Color.fromARGB(255, 255, 124, 124),
      ),
      CircleIcon(
        icon: Icons.location_city,
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        iconColor: Color.fromARGB(255, 255, 124, 124),
        iconSize: 18,
      ),
      CircleIcon(
        icon: Icons.fastfood_rounded,
        iconSize: 18,
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        iconColor: Color.fromARGB(255, 255, 124, 124),
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Card(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 140,
                  child: FadeInImageWidget(
                    photo: widget.room!.photos![0].urlOriginal!,
                    radius: 6,
                    fit: BoxFit.cover,
                  ),
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
                  Text(
                    widget.room?.block?.nameWithoutPolicy ?? '',
                    style: const TextStyle(
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextContainer(
                      text: "\$${widget.room?.block?.minPrice?.price}"),
                  const SizedBox(
                    height: 4,
                  ),
                  Wrap(
                    spacing: 4,
                    runSpacing: 8,
                    children: List.generate(
                      icons.length,
                      (index) => icons[index],
                    ),
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
