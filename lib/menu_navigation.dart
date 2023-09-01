import 'package:flutter/material.dart';

class MenuNavigation extends StatefulWidget {
  const MenuNavigation({super.key, required this.keys});

  final List<GlobalKey<State<StatefulWidget>>> keys;

  @override
  State<StatefulWidget> createState() => _MenuNavigationState();
}

class _MenuNavigationState extends State<MenuNavigation> {
  int selection = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          children: [
            IconButton(
                onPressed: () async {
                  setState(() {
                    selection = 1;
                  });
                  await Scrollable.ensureVisible(widget.keys[0].currentContext!,
                      duration: const Duration(milliseconds: 500));
                },
                icon: Icon(
                  selection == 1 ? Icons.square_sharp : Icons.square_sharp,
                  color: selection == 1 ? Colors.amber[900] : Colors.black,
                )),
            IconButton(
              onPressed: () async {
                setState(() {
                  selection = 2;
                });
                await Scrollable.ensureVisible(widget.keys[1].currentContext!,
                    duration: const Duration(milliseconds: 500));
              },
              icon: Icon(
                  selection == 2 ? Icons.square_sharp : Icons.square_sharp,
                  color: selection == 2 ? Colors.amber[900] : Colors.black),
            ),
            IconButton(
              onPressed: () async {
                setState(() {
                  selection = 3;
                });
                await Scrollable.ensureVisible(widget.keys[2].currentContext!,
                    duration: const Duration(milliseconds: 500));
              },
              icon: Icon(
                  selection == 3 ? Icons.square_sharp : Icons.square_sharp,
                  color: selection == 3 ? Colors.amber[900] : Colors.black),
            ),
            IconButton(
              onPressed: () async {
                setState(() {
                  selection = 4;
                });
                await Scrollable.ensureVisible(widget.keys[3].currentContext!,
                    duration: const Duration(milliseconds: 500));
              },
              icon: Icon(
                  selection == 4 ? Icons.square_sharp : Icons.square_sharp,
                  color: selection == 4 ? Colors.amber[900] : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
