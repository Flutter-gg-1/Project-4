

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TexfiledWidget extends StatelessWidget {
   TexfiledWidget({
    super.key, required this.texHint, required this.valG, this.validatorFun, this.onChangeFun
  });

  final String texHint;

  String valG;

  final String? Function(String?)? validatorFun;

  final Function(String)? onChangeFun;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 56),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(16),
        child: TextFormField(

          validator: validatorFun ,

          onChanged: onChangeFun,
          
          
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
