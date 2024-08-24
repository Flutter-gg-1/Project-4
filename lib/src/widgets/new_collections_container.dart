import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';

//return new collection container in home screen
Widget newCollectionsContainer({required image, required String text}) {
  return Container(
      height: 350,
      width: 300,
      decoration: const BoxDecoration(
      ),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset( image,)),
          Positioned(
              top: 7,
              left: 10,
              child: Text(
                text,
                style: GoogleFonts.abhayaLibre(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: ColorsConstant.darkPurple),
              ))
        ],
      ));
}
