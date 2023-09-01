import 'package:carousel_slider/carousel_slider.dart';
import 'package:estoque/pages/components/project_card.dart';
import 'package:flutter/material.dart';

class ProjectCarousel extends StatelessWidget {
  final CarouselController controller;
  const ProjectCarousel({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        carouselController: controller,
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
        ));
  }
}
