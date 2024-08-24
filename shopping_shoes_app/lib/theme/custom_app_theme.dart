import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static TextStyle homeAppBar = GoogleFonts.lato(
      textStyle: const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ));

  static TextStyle homeProductName = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white));

  static TextStyle homeProductModel = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white));
  static const TextStyle homeProductPrice =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white);

  static const TextStyle homeMoreText =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black);
}
