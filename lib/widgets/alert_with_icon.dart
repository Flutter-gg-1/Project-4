import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';

class AlertWithIcon extends StatelessWidget {
  final String alert;
  final IconData icon;
  final Color iconColor;
  const AlertWithIcon({super.key,required this.alert,required this.icon,required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 10,
      contentPadding: const EdgeInsets.all(0),
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      content: Container(
        alignment: Alignment.center,
        width: 300,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: iconColor,size: 85),
            Text(alert,style: GoogleFonts.poppins(color: mainColor,fontSize: 24,fontWeight: FontWeight.w600)),
          ],
        )
      ),
    );
  }
}