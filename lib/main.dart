import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotelflutter/pages/explorePage.dart';
import 'package:hotelflutter/pages/favoritesPage.dart';
import 'package:hotelflutter/pages/home.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/explore',
      builder: (context, state) => const FavoritesPage(),
    ),
    GoRoute(
      path: '/favorites',
      builder: (context, state) => const ExplorePage(),
    ),
  ],
);

void main() {
  runApp(MaterialApp.router(
    title: 'Hotel List',
    theme: ThemeData(textTheme: Typography.whiteRedmond),
    routerConfig: router,
  ));
}
