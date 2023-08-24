import 'package:flutter/material.dart';

class SkillKnowledge extends StatelessWidget {
  const SkillKnowledge({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[700],
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Skills")],
      ),
    );
  }
}
