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
            title: "MyCare App",
            description:
                "Fiz este projeto com o intuito de aprender e praticar uso de serviços e estados com React",
            date: "11 Mai. 2021",
            link: "https://github.com/lucascantao/mycareapp",
            pathToImage: 'images/card_banner_0.png',
          ),
          CardProject(
            title: "Epic Games Clone",
            description:
                "Esse projeto foi feito para praticar organização e posicionamento de layouts com React",
            date: "29 Dez 2020",
            link: "https://github.com/lucascantao/epic-clone",
            pathToImage: "images/card_banner_1.png",
          ),
        ],
        options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.60,
            autoPlay: true,
            pauseAutoPlayOnManualNavigate: true));
  }
}
