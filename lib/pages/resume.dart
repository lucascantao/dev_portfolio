import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resume extends StatelessWidget {
  final GlobalKey nextKey;
  const Resume({super.key, required this.nextKey});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                flex: 3,
                child: Container(
                  color: Colors.black87,
                  child: const Center(child: Text("Resume")),
                )),
            Flexible(
                flex: 7,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 128),
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "I AM A ",
                          style: GoogleFonts.leagueSpartan(
                              textStyle: TextStyle(
                                  fontSize: 48, color: Colors.amber[900])),
                        ),
                        Text(
                          "DEVELOPER",
                          style: GoogleFonts.leagueSpartan(
                              textStyle: const TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87)),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: IconButton(
                      onPressed: () async {
                        await Scrollable.ensureVisible(nextKey.currentContext!,
                            duration: const Duration(milliseconds: 500));
                      },
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.amber,
                      ),
                    )),
              ],
            ))
      ]),
    );
  }
}
