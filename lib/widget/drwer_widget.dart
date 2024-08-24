


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro4/global.dart';
import 'package:pro4/page/home_page.dart';
import 'package:pro4/widget/button_widget.dart';

class DrwerWidget extends StatelessWidget {
  const DrwerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
    
             const Spacer(flex: 1,),
            Text(
              "Hi $nameG",
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
    
            const Spacer(flex: 1,),
            ButtonWidget(
              tex: "Profile",
              fun: () {},
            ),
            SizedBox(
              height: 20,
            ),
            ButtonWidget(
              tex: "Logout",
              fun: () {
    
                Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ));
              },
            ),
    
             const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}