



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key, required this.tex, required this.fun,
  });


  final String tex;

  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Container(
        width: 250,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(
          tex,
          style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
