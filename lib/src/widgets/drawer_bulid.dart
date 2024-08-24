import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';

//drawer used in homeScreen and allProductScreen
Widget drawerBuild() {
  return Drawer(
      width: 250,
      backgroundColor: ColorsConstant.beige,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 230, 222, 212),
            ),
            child: Text(
              "Lavender",
              style: GoogleFonts.luxuriousScript(
                  fontSize: 65, color: ColorsConstant.darkPurple),
            ),
          ),
          ListTile(
            title: Text(
              "Lavender",
              style: GoogleFonts.abhayaLibre(
                  fontSize: 24, color: ColorsConstant.darkPurple),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded,
                color: ColorsConstant.darkPurple),
          ),
          const Divider(),
          ListTile(
            title: Text(
              "Peony",
              style: GoogleFonts.abhayaLibre(
                  fontSize: 24, color: ColorsConstant.darkPurple),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded,
                color: ColorsConstant.darkPurple),
          ),
          const Divider(),
          ListTile(
            title: Text(
              "Roses",
              style: GoogleFonts.abhayaLibre(
                  fontSize: 24, color: ColorsConstant.darkPurple),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded,
                color: ColorsConstant.darkPurple),
          ),
          const Divider(),
          ListTile(
            title: Text(
              "Orchid",
              style: GoogleFonts.abhayaLibre(
                  fontSize: 24, color: ColorsConstant.darkPurple),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded,
                color: ColorsConstant.darkPurple),
          ),
          const Divider(),
          ListTile(
            title: Text(
              "Lilies",
              style: GoogleFonts.abhayaLibre(
                  fontSize: 24, color: ColorsConstant.darkPurple),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded,
                color: ColorsConstant.darkPurple),
          ),
          const Divider(),
          ListTile(
            title: Text(
              "Tulip",
              style: GoogleFonts.abhayaLibre(
                  fontSize: 24, color: ColorsConstant.darkPurple),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded,
                color: ColorsConstant.darkPurple),
          ),
          const Divider(),
        ],
      ));
}
