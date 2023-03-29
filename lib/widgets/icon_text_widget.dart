import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    required this.icon,
    required this.text,
    required this.color,
    super.key,
  });
  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          text,
          style: const TextStyle(
              color: Color(0xFF333333),
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
