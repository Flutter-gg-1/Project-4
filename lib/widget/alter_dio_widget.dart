import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class AlterDioWidget extends StatelessWidget {
  const AlterDioWidget({
    super.key, required this.tex, required this.isAdd,
  });


  final String tex;

  final bool isAdd;

  @override
  Widget build(BuildContext context) {
    return Dialog(
    
    
      child: Container(
    
        width: 150,
        height: 150,
    
        decoration: BoxDecoration(
    
          borderRadius: BorderRadius.circular(16),
          color: Colors.blueGrey
        ),
    
    
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tex, style: GoogleFonts.lato(fontSize: 20,color: Colors.white),),

            
            isAdd == true ? const Icon(FontAwesome.check_solid, color: Colors.green,) :
            const Icon(FontAwesome.xmark_solid, color: Colors.red,)
          ],
        ),
      ),
    );
  }
}