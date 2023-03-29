import 'package:flutter/material.dart';

class ShadowIconWidget extends StatelessWidget {
  const ShadowIconWidget({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.all(4),
      height: 70,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: const Color.fromARGB(255, 128, 128, 128),
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color.fromARGB(255, 122, 122, 122),
              fontWeight: FontWeight.w900,
            ),
          )
        ],
      ),
    );
  }
}
