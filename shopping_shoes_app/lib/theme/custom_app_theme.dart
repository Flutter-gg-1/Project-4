import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static TextStyle homeAppBar = GoogleFonts.ubuntu(
      textStyle: const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ));

  static TextStyle homeProductName = GoogleFonts.lato(
      textStyle: const TextStyle(
          fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white));

  static TextStyle homeProductModel = GoogleFonts.lato(
      textStyle: const TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white));
  static const TextStyle homeProductPrice =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white);

  static const TextStyle homeMoreText =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black);

  static TextStyle txtStyleGoogleFont = GoogleFonts.ubuntu();

  static TextStyle txtStyleTitlePage = GoogleFonts.ubuntu(
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));

  static TextStyle txtStyleBold = GoogleFonts.ubuntu(
      textStyle: const TextStyle(fontWeight: FontWeight.bold));

  static TextStyle txtStyle_12B = GoogleFonts.ubuntu(
      textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold));

  static TextStyle txtStyleBlue =
      GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.blue));

  static TextStyle txtStyleWhite =
      GoogleFonts.ubuntu(textStyle: const TextStyle(color: Colors.white));

  static TextStyle txtStyleWhiteBold = GoogleFonts.ubuntu(
      textStyle:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.bold));

  static TextStyle txtStyleBtn = GoogleFonts.ubuntu(
      textStyle: const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300));

  static TextStyle txtStyleItemName = GoogleFonts.ubuntu(
      textStyle: const TextStyle(color: Colors.white, fontSize: 25));
}
