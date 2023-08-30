import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key, required this.keys});

  final List<GlobalKey<State<StatefulWidget>>> keys;

  @override
  State<StatefulWidget> createState() => _NavigationMenu();
}

class _NavigationMenu extends State<NavigationMenu> {
  int selection = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: const Color.fromARGB(255, 18, 24, 38),
      height: size.height * 0.1,
      width: size.width,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextButton(
          onPressed: () {},
          child: const Text("Lucas Cantão"),
        ),
        Row(
          children: [
            TextButton(
                onPressed: () async {
                  setState(() {
                    selection = 1;
                  });
                  await Scrollable.ensureVisible(widget.keys[0].currentContext!,
                      duration: const Duration(milliseconds: 500));
                },
                child: Text(
                  "Home",
                  style: TextStyle(
                      fontWeight:
                          selection == 1 ? FontWeight.bold : FontWeight.normal),
                )),
            TextButton(
                onPressed: () async {
                  setState(() {
                    selection = 2;
                  });
                  await Scrollable.ensureVisible(widget.keys[1].currentContext!,
                      duration: const Duration(milliseconds: 500));
                },
                child: Text("Projetos",
                    style: TextStyle(
                        fontWeight: selection == 2
                            ? FontWeight.bold
                            : FontWeight.normal))),
            TextButton(
                onPressed: () async {
                  setState(() {
                    selection = 3;
                  });
                  await Scrollable.ensureVisible(widget.keys[2].currentContext!,
                      duration: const Duration(milliseconds: 500));
                },
                child: Text("Sobre",
                    style: TextStyle(
                        fontWeight: selection == 3
                            ? FontWeight.bold
                            : FontWeight.normal))),
          ],
        )
      ]),
    );
  }
}
