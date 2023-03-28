import 'package:flutter/material.dart';

import '../model/hotel.dart';

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
      appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 202,
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
                  bottom: 3.0,
                  right: 0.0,
                  left: 0.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          indicators(widget.room?.photos?.length, activePage)))
            ],
          ),
          CardDetail(
            block: widget.block!,
          )
        ],
      ),
    );
  }
}

class CardDetail extends StatelessWidget {
  const CardDetail({
    super.key,
    required this.block,
  });

  final Block block;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${block.nameWithoutPolicy}",
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                Text(
                  "\$${block.minPrice?.price}",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 206, 133),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
