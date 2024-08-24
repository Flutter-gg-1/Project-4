import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';

//this card is for user info ass a card
Widget userCard({required icon, required String text}) {
  return Padding(
    padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
    child: Card(
      elevation: 3,
      color: ColorsConstant.beige,
      child: ListTile(
        leading: Icon(icon, color: ColorsConstant.purple),
        title: Text(text,
            style: GoogleFonts.abhayaLibre(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColorsConstant.darkPurple,
            )),
      ),
    ),
  );
}
