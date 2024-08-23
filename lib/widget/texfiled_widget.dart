

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TexfiledWidget extends StatelessWidget {
  const TexfiledWidget({
    super.key, required this.texHint,
  });

  final String texHint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 56),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(16),
        child: TextField(
          
          
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
              hintText: texHint,
              
              hintStyle: GoogleFonts.roboto(),
              enabledBorder: OutlineInputBorder(
                
                
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  )),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ))),
        ),
      ),
    );
  }
}
