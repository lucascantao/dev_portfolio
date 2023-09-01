import 'package:flutter/material.dart';

class CardProject extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String link;
  const CardProject(
      {super.key,
      required this.title,
      required this.description,
      required this.date,
      required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width * 0.5,
      color: Colors.black,
      child: Row(
        children: [
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.black12,
              )),
          Flexible(
            flex: 1,
            child: Column(
              children: [
                Text(title),
                Text(description),
                Text(date),
                Text(link)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
