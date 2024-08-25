import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:shopping_app/src/screens/all_products_screen.dart';

//drawer used in homeScreen and
Widget drawerBuild(BuildContext context) {
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
            "All Products",
            style: GoogleFonts.abhayaLibre(
                fontSize: 24, color: ColorsConstant.darkPurple),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded,
              color: ColorsConstant.darkPurple),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AllProductsScreen(),
              ),
            );
          },
        ),
        const Divider(),
      ],
    ),
  );
}
