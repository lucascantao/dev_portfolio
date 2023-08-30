import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resume extends StatelessWidget {
  final GlobalKey nextKey;
  const Resume({super.key, required this.nextKey});
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 18, 24, 38),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("HEY, THERE"),
            Text("I'm Lucas"),
            Text("I am a programmer and web developer")
          ],
        ));
  }
}
