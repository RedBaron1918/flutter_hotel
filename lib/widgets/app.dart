import 'package:flutter/material.dart';
import 'package:hotelflutter/pages/explore_page.dart';
import 'package:hotelflutter/pages/home.dart';
import 'package:hotelflutter/pages/profile.dart';
import 'package:hotelflutter/widgets/scroll_to_hide.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int currentIndex = 0;
  List<Widget> pageList = [
    const HomePage(),
    const ExplorePage(),
    const ProfilePage()
  ];
  late final ScrollController controller = ScrollController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ScrollToHideWidget(
        controller: controller,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.travel_explore), label: 'explore'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        controller: controller,
        slivers: [
          SliverFillRemaining(
            child: pageList.elementAt(currentIndex),
          )
        ],
      ),
    );
  }
}
