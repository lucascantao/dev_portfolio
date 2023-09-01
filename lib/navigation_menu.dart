import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key, required this.keys});

  final List<GlobalKey<State<StatefulWidget>>> keys;

  @override
  State<StatefulWidget> createState() => _NavigationMenu();
}

class _NavigationMenu extends State<NavigationMenu> {
  int selection = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: const Color.fromARGB(255, 18, 24, 38),
      height: size.height * 0.1,
      width: size.width,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Lucas Cantão",
            style: GoogleFonts.leagueSpartan(
                color: const Color.fromARGB(255, 39, 255, 203),
                fontSize: 20,
                fontStyle: FontStyle.italic),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () async {
                    setState(() {
                      selection = 1;
                    });
                    await Scrollable.ensureVisible(
                        widget.keys[0].currentContext!,
                        duration: const Duration(milliseconds: 500));
                  },
                  child: Text(
                    "Home",
                    style: selection == 1
                        ? (const TextStyle(
                            color: Color.fromARGB(255, 39, 255, 203),
                            fontWeight: FontWeight.bold))
                        : (const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.normal)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () async {
                    setState(() {
                      selection = 2;
                    });
                    await Scrollable.ensureVisible(
                        widget.keys[1].currentContext!,
                        duration: const Duration(milliseconds: 500));
                  },
                  child: Text(
                    "Projetos",
                    style: selection == 2
                        ? (const TextStyle(
                            color: Color.fromARGB(255, 39, 255, 203),
                            fontWeight: FontWeight.bold))
                        : (const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.normal)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () async {
                    setState(() {
                      selection = 3;
                    });
                    await Scrollable.ensureVisible(
                        widget.keys[2].currentContext!,
                        duration: const Duration(milliseconds: 500));
                  },
                  child: Text(
                    "Sobre",
                    style: selection == 3
                        ? (const TextStyle(
                            color: Color.fromARGB(255, 39, 255, 203),
                            fontWeight: FontWeight.bold))
                        : (const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.normal)),
                  )),
            ),
          ],
        )
      ]),
    );
  }
}
