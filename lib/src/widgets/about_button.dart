import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';

// widget of about botton in ItemScreen that display alert dialog
Widget aboutBotton({required context}) {
  return ElevatedButton(
    onPressed: () => showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: ColorsConstant.violate,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: Text("Lavender Plant Care",
            style: GoogleFonts.abhayaLibre(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: ColorsConstant.darkPurple)),
        content: Text(
            "Established lavender plants are extremely drought tolerant and only need to be watered during prolonged dry spells. To prevent root rot and fungal diseases, avoid overwatering and keep the leaves dry by watering at ground level or using drip irrigation.",
            
            style: GoogleFonts.abhayaLibre(
                fontSize: 18,
                color: ColorsConstant.darkPurple)
            ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context, "Close alert"),
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorsConstant.purple,
                shadowColor: ColorsConstant.darkPurple,
                elevation: 4,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5)),
            child: Text(
              "Close",
              style: GoogleFonts.abhayaLibre(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorsConstant.darkPurple),
            ),
          ),
        ],
      ),
    ),
    style: ElevatedButton.styleFrom(
        backgroundColor: ColorsConstant.purple,
        shadowColor: ColorsConstant.darkPurple,
        elevation: 4,
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8)),
    child: Text(
      "About Lavender",
      style: GoogleFonts.abhayaLibre(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: ColorsConstant.darkPurple),
    ),
  );
}
