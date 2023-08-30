import 'package:estoque/pages/about.dart';
import 'package:estoque/pages/footer.dart';
// import 'package:estoque/pages/skill_knowledge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';

// import 'menu_navigation.dart';
import 'navigation_menu.dart';
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
            About(key: keys[2]),
            const Footer()
          ]),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [NavigationMenu(keys: keys)],
            ))
      ]),
    );
  }
}
