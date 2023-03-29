import 'package:flutter/material.dart';

import 'package:hotelflutter/widgets/app.dart';

void main() {
  runApp(MaterialApp(
    title: 'Hotel List',
    theme: ThemeData(
      textTheme: Typography.blackRedwoodCity,
      scaffoldBackgroundColor: const Color.fromARGB(255, 233, 233, 233),
    ),
    home: const App(),
  ));
}
