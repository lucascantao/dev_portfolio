import 'package:estoque/pages/about.dart';
import 'package:estoque/pages/footer.dart';
import 'package:estoque/pages/skill_knowledge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';

import 'pages/done_projects.dart';
import 'pages/resume.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    final router = GoRouter(routes: [
      GoRoute(
          path: '/',
          pageBuilder: (context, state) => const MaterialPage(child: Home()))
    ]);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<GlobalKey> keys = [
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
    ];

    return Scaffold(
      key: scaffoldKey,
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(children: [
            Resume(
              key: keys[0],
              nextKey: keys[1],
            ),
            DoneProjects(key: keys[1]),
            SkillKnowledge(key: keys[2]),
            About(key: keys[3]),
            const Footer()
          ]),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [MenuNavigation(keys: keys)],
            ))
      ]),
    );
  }
}

class MenuNavigation extends StatefulWidget {
  const MenuNavigation({super.key, required this.keys});

  final List<GlobalKey<State<StatefulWidget>>> keys;

  @override
  State<StatefulWidget> createState() => _MenuNavigationState();
}

class _MenuNavigationState extends State<MenuNavigation> {
  int selection = 0;
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
                  selection == 1 ? Icons.square_sharp : Icons.square_outlined,
                  color: Colors.amber,
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
                  selection == 2 ? Icons.square_sharp : Icons.square_outlined,
                  color: Colors.amber),
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
                  selection == 3 ? Icons.square_sharp : Icons.square_outlined,
                  color: Colors.amber),
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
                  selection == 4 ? Icons.square_sharp : Icons.square_outlined,
                  color: Colors.amber),
            ),
            IconButton(
              onPressed: () async {
                setState(() {
                  selection = 5;
                });
                await Scrollable.ensureVisible(widget.keys[4].currentContext!,
                    duration: const Duration(milliseconds: 500));
              },
              icon: Icon(
                  selection == 5 ? Icons.square_sharp : Icons.square_outlined,
                  color: Colors.amber),
            )
          ],
        ),
      ),
    );
  }
}
