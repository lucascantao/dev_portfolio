import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final IconData icon;
  const CircleImage({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(100)),
        child: Icon(
          icon,
          size: 100,
          color: Colors.black,
        ));
  }
}
