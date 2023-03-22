import 'package:flutter/material.dart';
import 'package:hotelflutter/pages/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Hotel List',
    theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 26, 26, 26),
        textTheme: Typography.whiteRedmond),
    home: const Home(),
  ));
}
