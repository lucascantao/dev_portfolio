import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resume extends StatelessWidget {
  final GlobalKey nextKey;
  const Resume({super.key, required this.nextKey});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height,
        width: size.width,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Hello, i'm Lucas",
                        style: GoogleFonts.leagueSpartan(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 39, 255, 203),
                        ),
                      ),
                    ),
                    Text(
                      "Web Developer",
                      style: GoogleFonts.leagueSpartan(
                          color: Colors.white,
                          fontSize: 64,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "Eu sou estudante de Ciência da Computação focado na área de desenvolvimento de software Mobile e Web",
                        style: GoogleFonts.leagueSpartan(
                            fontSize: 24, fontWeight: FontWeight.w100),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      padding: const EdgeInsets.all(20),
                      color: const Color.fromARGB(255, 39, 255, 203),
                      child: Text("Download Resume",
                          style: GoogleFonts.leagueSpartan(
                              color: const Color.fromARGB(255, 31, 142, 167),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              const CircleAvatar(
                radius: 128,
                backgroundColor: Color.fromARGB(255, 39, 255, 203),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/avatar_icon.jpeg'),
                  radius: 125,
                ),
              )
            ],
          ),
        ));
  }
}
