import 'package:flutter/material.dart';
import 'package:hotelflutter/main.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BottomNavigationBar(
        onTap: (index) {
          switch (index) {
            case 0:
              {
                router.go('/');
                break;
              }
            case 1:
              {
                router.go('/explore');
                break;
              }
            case 2:
              {
                router.go('/favorites');
                break;
              }
          }
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.travel_explore), label: 'explore'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
