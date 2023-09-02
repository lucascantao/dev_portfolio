import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyController extends StatefulWidget {
  CarouselController myCarouselController = CarouselController();
  MyController({super.key});

  @override
  State<MyController> createState() => _MyControllerState();
}

class _MyControllerState extends State<MyController> {
  bool nextHover = false;

  bool prevHover = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onHover: (value) {
            setState(() {
              prevHover = value;
            });
          },
          onTap: () => widget.myCarouselController.previousPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.linear),
          child: CircleAvatar(
              radius: prevHover ? 35 : 30,
              backgroundColor: prevHover
                  ? const Color.fromARGB(255, 39, 255, 203)
                  : Colors.black,
              child: const Text('<')),
        ),
        InkWell(
          onHover: (value) {
            setState(() {
              nextHover = value;
            });
          },
          onTap: () => widget.myCarouselController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.linear),
          child: CircleAvatar(
              radius: nextHover ? 35 : 30,
              backgroundColor: nextHover
                  ? const Color.fromARGB(255, 39, 255, 203)
                  : Colors.black,
              child: const Text('>')),
        ),
      ],
    );
  }
}
