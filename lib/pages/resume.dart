
import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Resume",
            style: TextStyle(color: Colors.black45),
          )
        ],
      ),
    );
  }
}