import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';

class MainLogo extends StatelessWidget {
  const MainLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(children: [
          Text("Welcome To", style: GoogleFonts.happyMonkey(color: mainColor))
        ]),
      ),
      Image.asset('assets/logo.png', width: 300),
      const SizedBox(height: 10),
      Text("Easy, Extraordinary, Exceptional",
          style: GoogleFonts.happyMonkey(color: mainColor, fontSize: 15)),
    ]);
  }
}
