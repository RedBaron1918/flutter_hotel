import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/fade_in_image_widget.dart';

import '../model/models.dart';
import '../widgets/circle_icon.dart';
import '../widgets/text_container.dart';

class DetailWidget extends StatefulWidget {
  const DetailWidget({
    Key? key,
    required this.block,
    required this.room,
  }) : super(key: key);

  final Block? block;
  final Room? room;

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(
      imagesLength,
      (index) {
        return Container(
          margin: const EdgeInsets.all(3),
          width: 6,
          height: 6,
          decoration: BoxDecoration(
              color: currentIndex == index ? Colors.black : Colors.black26,
              shape: BoxShape.circle),
        );
      },
    );
  }

  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: [
          Positioned.fill(
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: PageView.builder(
                    itemCount: widget.room?.photos?.length,
                    pageSnapping: true,
                    onPageChanged: (page) {
                      setState(() {
                        activePage = page;
                      });
                    },
                    itemBuilder: (context, index) {
                      Photo photo = widget.room!.photos![index];
                      return FadeInImageWidget(
                        photo: photo.urlOriginal!,
                        radius: 6,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: CircleIcon(
                    iconSize: 25,
                    icon: Icons.arrow_back,
                    callBack: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  top: 235.0,
                  right: 0.0,
                  left: 0.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        indicators(widget.room?.photos?.length, activePage),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CardDetail(
              block: widget.block!,
              room: widget.room,
            ),
          )
        ]),
      ),
    );
  }
}

class CardDetail extends StatelessWidget {
  const CardDetail({super.key, required this.block, this.room});

  final Block block;
  final Room? room;

  @override
  Widget build(BuildContext context) {
    List<CircleIcon> icons = const [
      CircleIcon(
        icon: Icons.bed,
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        iconColor: Color.fromARGB(255, 255, 124, 124),
        iconSize: 30,
      ),
      CircleIcon(
        icon: Icons.wifi,
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        iconColor: Color.fromARGB(255, 255, 124, 124),
        iconSize: 30,
      ),
      CircleIcon(
        icon: Icons.directions_car_rounded,
        iconSize: 30,
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        iconColor: Color.fromARGB(255, 255, 124, 124),
      ),
      CircleIcon(
        icon: Icons.location_city,
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        iconColor: Color.fromARGB(255, 255, 124, 124),
        iconSize: 30,
      ),
      CircleIcon(
        icon: Icons.fastfood_rounded,
        iconSize: 30,
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        iconColor: Color.fromARGB(255, 255, 124, 124),
      ),
    ];
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${block.nameWithoutPolicy}",
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontWeight: FontWeight.w300,
                  fontSize: 22,
                ),
              ),
              TextContainer(
                text: "\$${block.minPrice?.price}",
                fontSize: 18,
              ),
            ],
          ),
          const Text(
            "What they offer",
            style: TextStyle(
              color: Color(0xFF333333),
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              icons.length,
              (index) => icons[index],
            ),
          ),
          const Text(
            "Description",
            style: TextStyle(
              color: Color(0xFF333333),
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          Text(
            "${room?.description}",
            style: const TextStyle(
              color: Color.fromARGB(255, 119, 119, 119),
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                    shape: const StadiumBorder(),
                    height: 50,
                    padding: const EdgeInsets.all(5),
                    color: const Color.fromARGB(255, 255, 96, 96),
                    onPressed: () {},
                    child: const Text(
                      'Book Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
