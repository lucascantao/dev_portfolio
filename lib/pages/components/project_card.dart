import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CardProject extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String link;
  final String pathToImage;
  const CardProject(
      {super.key,
      required this.title,
      required this.description,
      required this.date,
      required this.link,
      required this.pathToImage});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(link);
    return Container(
      // height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width * 0.5,
      // color: Colors.black,
      child: Row(
        children: [
          Flexible(
              flex: 2,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  pathToImage,
                  fit: BoxFit.fitHeight,
                ),
              )),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.leagueSpartan(
                        color: const Color.fromARGB(255, 39, 255, 203),
                        fontSize: 36,
                        fontWeight: FontWeight.w100),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(date,
                      style: GoogleFonts.leagueSpartan(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w100)),
                  const SizedBox(
                    height: 36,
                  ),
                  Text(description,
                      style: GoogleFonts.leagueSpartan(
                          fontSize: 20, fontWeight: FontWeight.w100)),
                  TextButton(
                      onPressed: () async {
                        if (!await launchUrl(_url)) {
                          throw Exception('Could not launch $_url');
                        }
                      },
                      child: const Text("Ler Mais..."))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Future<void> _launchUrl() async {
  //   if(!await launchUrl(_url))
  // }
}
