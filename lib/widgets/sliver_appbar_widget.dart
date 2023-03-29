import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({
    required this.text,
    required this.bgColor,
    required this.txtColor,
    super.key,
  });
  final String text;
  final Color bgColor;
  final Color txtColor;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: bgColor,
      floating: true,
      title: Text(
        text,
        style: TextStyle(
          color: txtColor,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.2,
        ),
      ),
    );
  }
}
