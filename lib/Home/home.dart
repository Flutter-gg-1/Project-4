import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Perfume',
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 30,
              color: const Color(0xffF05A7E),
            ),
          ),
          iconTheme: IconThemeData(
            color: Color(0xff125B9A),
          ),
        ),
        drawer: Drawer(),
        body: Column(

          children: [
            Container(
              
            )
          ],
        ));
  }
}
