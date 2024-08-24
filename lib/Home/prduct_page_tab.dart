import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget PerSize(String size, String price) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          size,
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 24,
            color: const Color(0xffF05A7E),
          ),
        ),
        SizedBox(height: 10),
        Text(
          price,
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}