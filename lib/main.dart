import 'package:flutter/material.dart';

import 'package:hotelflutter/widgets/app.dart';

void main() {
  runApp(MaterialApp(
    title: 'Hotel List',
    theme: ThemeData(textTheme: Typography.whiteRedmond),
    home: const App(),
  ));
}
