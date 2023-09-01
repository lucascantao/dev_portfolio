import 'package:estoque/pages/components/my_controller.dart';
import 'package:flutter/material.dart';
import 'components/project_carousel.dart';

class DoneProjects extends StatelessWidget {
  const DoneProjects({super.key});
  @override
  Widget build(BuildContext context) {
    MyController buttonMyController = MyController();
    return Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ProjectCarousel(
                      controller: buttonMyController.myCarouselController),
                ])),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width.toDouble() * 0.1),
            child: buttonMyController,
          ),
        )
      ],
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
