import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/globals/data.dart';
import 'package:shopping_app/screens/user_screen_navigator.dart';
import 'package:shopping_app/widgets/alert_with_icon.dart';
import 'package:shopping_app/widgets/main_logo.dart';
import 'package:shopping_app/widgets/user_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MainLogo(),
                const SizedBox(height: 30),
                Text(
                  "Login to your account",
                  style: GoogleFonts.poppins(
                    color: mainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  )
                ),
                const SizedBox(height: 15),
                UserInput(label: 'Enter your email',type: 'email', controller: loginEmailController,maxLength: 20),
                const SizedBox(height: 15),
                UserInput(label: 'Enter your password',type: 'password',controller: loginPasswordController,maxLength: 40),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(mainColor)),
                  onPressed: () {
                    bool isExist = false;
                    // check if user exists
                    for(var user in users) {
                      if((user.email == loginEmailController.text) && (user.password == loginPasswordController.text)) {
                        isExist = true;
                        Navigator.pushAndRemoveUntil(context,MaterialPageRoute(
                          builder: (context) {return UserScreenNavigator(currentUser: user);}
                          ),
                          (predicate) => false
                        );
                      }
                    }
                    // if user with the provided info is not exist
                    !isExist ? showDialog(context: context, builder: (context){
                      return const AlertWithIcon(
                        alert: "Account Not Found",
                        icon: Icons.error_outline_outlined,
                        iconColor: Colors.red
                      );
                    }) : null;
                  },
                child: Text("Login", style: GoogleFonts.poppins(color: Colors.white),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}