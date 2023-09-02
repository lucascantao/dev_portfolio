import 'package:estoque/pages/components/circle_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: const Color.fromARGB(255, 18, 24, 38),
      height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width * 0.5,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(
                  flex: 1,
                  child: CircleImage(icon: Icons.menu_book),
                ),
                Flexible(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Comecei a estudar programação no ensino médio e sempre fui fascinado por construir e criar coisas, desde desenhos até jogos.",
                      style: GoogleFonts.leagueSpartan(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Desde então tenho me empenhado em aperfeiçoar minhas habilidades e conseguir ingressar na área de desenvolvimento.",
                      style: GoogleFonts.leagueSpartan(fontSize: 24),
                    ),
                  ),
                ),
                const Flexible(
                  flex: 1,
                  child: CircleImage(icon: Icons.computer),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(
                  flex: 1,
                  child: CircleImage(icon: Icons.gamepad),
                ),
                Flexible(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Minhas áreas de interesse são desenvolvimento web e criação de jogos.",
                      style: GoogleFonts.leagueSpartan(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
