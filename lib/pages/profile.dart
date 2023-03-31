import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/icons/circle_icon.dart';
import '../widgets/sliver_appbar_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProfileSettings> icons = const [
      ProfileSettings(
        text: "Settings",
        icon: Icons.settings,
        iconColor: Colors.amber,
      ),
      ProfileSettings(
        text: "Bookings",
        iconColor: Colors.lightBlue,
        icon: Icons.bookmark_outline_outlined,
      ),
      ProfileSettings(
        text: "Favorites",
        icon: Icons.favorite,
        iconColor: Colors.redAccent,
      ),
      ProfileSettings(
        text: "Privacy",
        iconColor: Colors.lightGreen,
        icon: Icons.shield,
      ),
      ProfileSettings(
        text: "Log Out",
        iconColor: Colors.grey,
        icon: Icons.exit_to_app_rounded,
      ),
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      body: CustomScrollView(
        slivers: [
          const SliverAppBarWidget(
            showPic: false,
            anotherWidget: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleIcon(
                icon: Icons.edit_document,
                iconColor: Colors.grey,
                iconSize: 18,
              ),
            ),
            text: "Profile",
            bgColor: Colors.white,
            txtColor: Colors.black,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 20),
              child: Column(
                children: [
                  const CircleAvatar(
                    minRadius: 30,
                    maxRadius: 45,
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundImage: NetworkImage(
                        "https://scontent.ftbs5-2.fna.fbcdn.net/v/t1.18169-9/1391743_603079143062900_1606433576_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=IzVRfgAz8P8AX8LH0nX&_nc_ht=scontent.ftbs5-2.fna&oh=00_AfC0t0cP4wxY2R1FPTntC20Mat35rgn9LWwoP0_1Vn4Crg&oe=644D488A"),
                  ),
                  const Text(
                    "John Doe",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const Text(
                    "+123456789",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.grey,
                        letterSpacing: .3),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: List.generate(
                      icons.length,
                      (index) => icons[index],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileSettings extends StatelessWidget {
  const ProfileSettings(
      {super.key,
      required this.icon,
      this.textSize,
      required this.text,
      this.iconColor});
  final IconData icon;
  final String text;
  final Color? iconColor;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleIcon(
                    icon: icon,
                    iconColor: iconColor,
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: textSize),
                  ),
                ],
              ),
              const Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
