import 'package:carousel_slider/carousel_slider.dart';
import 'package:estoque/pages/components/project_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoneProjects extends StatelessWidget {
  const DoneProjects({super.key});
  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
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
                  CarouselSlider(
                      carouselController: buttonCarouselController,
                      items: const [
                        CardProject(
                            title: "Projeto 1",
                            description:
                                "Fiz este projeto com o intuito de aprender e testar minha habilidades com react",
                            date: "19, mar 2021",
                            link: "https://github.com"),
                        CardProject(
                            title: "Projeto 2",
                            description:
                                "Fiz este projeto com o intuito de aprender e testar minha habilidades com react",
                            date: "19, mar 2021",
                            link: "https://github.com"),
                        CardProject(
                            title: "Projeto 3",
                            description:
                                "Fiz este projeto com o intuito de aprender e testar minha habilidades com react",
                            date: "19, mar 2021",
                            link: "https://github.com"),
                      ],
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * 0.60,
                        autoPlay: false,
                      )),
                ])),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width.toDouble() * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => buttonCarouselController.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.linear),
                  child: const CircleAvatar(
                      backgroundColor: Colors.black, child: Text('<')),
                ),
                InkWell(
                  onTap: () => buttonCarouselController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.linear),
                  child: const CircleAvatar(
                      backgroundColor: Colors.black, child: Text('>')),
                ),
              ],
            ),
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
