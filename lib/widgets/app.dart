import 'package:flutter/material.dart';
import 'package:hotelflutter/pages/explore_page.dart';
import 'package:hotelflutter/pages/favorite_page.dart';
import 'package:hotelflutter/pages/home.dart';
import 'package:hotelflutter/pages/profile.dart';
import 'package:hotelflutter/widgets/my_bottom_navigation.dart';
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
    const FavoritePage(),
    const ProfilePage()
  ];
  late final ScrollController controller = ScrollController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ScrollToHideWidget(
        controller: controller,
        child: MyBottomNavigation(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
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
