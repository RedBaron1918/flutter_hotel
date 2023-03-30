import 'package:flutter/material.dart';

import '../model/hotel.dart';
import '../widgets/shadow_icon_widget.dart';

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
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 211, 211, 211),
        title: Text(widget.block?.nameWithoutPolicy ?? ""),
      ),
      body: Stack(children: [
        Positioned.fill(
          child: Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
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
                    return Image.network(
                      photo.urlOriginal ?? "something bad happend",
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
              Positioned(
                top: 5.0,
                right: 0.0,
                left: 0.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: indicators(widget.room?.photos?.length, activePage),
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
    );
  }
}

class CardDetail extends StatelessWidget {
  const CardDetail({super.key, required this.block, this.room});

  final Block block;
  final Room? room;

  @override
  Widget build(BuildContext context) {
    List<ShadowIconWidget> icons = const [
      ShadowIconWidget(
        icon: Icons.bed,
        text: "Twin bed",
      ),
      ShadowIconWidget(
        icon: Icons.wifi,
        text: "Free wifi",
      ),
      ShadowIconWidget(
        icon: Icons.directions_car_rounded,
        text: "Parking",
      ),
      ShadowIconWidget(
        icon: Icons.location_city,
        text: "City View",
      ),
      ShadowIconWidget(
        icon: Icons.fastfood_rounded,
        text: "Food",
      ),
    ];
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(36), topRight: Radius.circular(36))),
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
              Text(
                "\$${block.minPrice?.price}",
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 191, 94),
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
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
          Wrap(
            spacing: 4,
            runSpacing: 8,
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
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 149, 255, 152),
                    shape: BoxShape.circle),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.phone,
                  ),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: MaterialButton(
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.all(5),
                    color: Colors.amber,
                    onPressed: () {},
                    child: const Text(
                      'Material Button',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.all(4),
      height: 70,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color.fromARGB(255, 128, 128, 128)),
          Text(
            text,
            style: const TextStyle(
              color: Color.fromARGB(255, 122, 122, 122),
              fontWeight: FontWeight.w900,
            ),
          )
        ],
      ),
    );
  }
}
