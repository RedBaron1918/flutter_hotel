import 'package:flutter/material.dart';
import 'package:hotelflutter/widgets/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel List',
      theme: ThemeData(
        textTheme: Typography.blackRedwoodCity,
        scaffoldBackgroundColor: const Color.fromARGB(255, 233, 233, 233),
      ),
      home: const App(),
    );
  }
}
