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
                    Text(
                      "Web Developer",
                      style: GoogleFonts.leagueSpartan(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                        "Eu sou estudante de Ciência da Computação focado na área de desenvolvimento de software Mobile e Web"),
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
              const CircleAvatar(
                radius: 90,
                backgroundColor: Color.fromARGB(255, 39, 255, 203),
                child: CircleAvatar(
                  radius: 88,
                ),
              )
            ],
          ),
        ));
  }
}
