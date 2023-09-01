import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyController extends StatelessWidget {
  CarouselController myCarouselController = CarouselController();
  MyController({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => myCarouselController.previousPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.linear),
          child: const CircleAvatar(
              backgroundColor: Colors.black, child: Text('<')),
        ),
        InkWell(
          onTap: () => myCarouselController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.linear),
          child: const CircleAvatar(
              backgroundColor: Colors.black, child: Text('>')),
        ),
      ],
    );
  }
}
