import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:shopping_app/src/screens/signup_screen.dart';

//splash scren for 3 seconds
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
        splash: Text(
          "Lavender",
          style: GoogleFonts.luxuriousScript(
              fontSize: 60, color: ColorsConstant.darkPurple),
        ),
        nextScreen: const SignupScreen(),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.rightToLeft,
        backgroundColor: ColorsConstant.violate);
  }
}
