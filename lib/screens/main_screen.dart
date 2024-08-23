import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/screens/login_screen.dart';
import 'package:shopping_app/screens/sign_up_screen.dart';
import 'package:shopping_app/widgets/main_logo.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 200,),
              const MainLogo(),
              const SizedBox(height: 70,),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(mainColor)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignUpScreen();
                  }));
                },
                child: SizedBox(width: 100,child: Text("Sign Up", textAlign: TextAlign.center, style: GoogleFonts.poppins(color: Colors.white,),))),
              const SizedBox(height: 20,),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(mainColor)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                child: SizedBox(width: 100,child: Text("Login", textAlign: TextAlign.center, style: GoogleFonts.poppins(color: Colors.white),))),
            ],
          ),
        ),
      ),
    );
  }
}