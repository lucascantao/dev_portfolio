import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoneProjects extends StatelessWidget {
  const DoneProjects({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.black87,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("MEUS PROJETOS",
                      style: GoogleFonts.leagueSpartan(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.bold))),
                ),
              )),
          Flexible(
              flex: 9,
              child: Container(
                color: Colors.white,
              ))
        ],
      ),
    );
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
