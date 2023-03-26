import 'package:flutter/material.dart';
import 'package:hotelflutter/pages/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Hotel List',
    theme: ThemeData(textTheme: Typography.whiteRedmond),
    home: const Home(),
  ));
}
