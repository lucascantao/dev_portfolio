import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoneProjects extends StatelessWidget {
  const DoneProjects({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 18, 24, 38),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(child: Text("projects")));
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String link;
  const ProjectCard({super.key, required this.title, required this.link});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 500,
      width: 500,
      child: Stack(
        children: [
          Image.asset(
            'images/card_banner_0.png',
            height: 500,
            width: 500,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(title), Text(link)]),
          ),
        ],
      ),
    );
  }
}
