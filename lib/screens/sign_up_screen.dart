// ignore_for_file: use_build_context_synchronously, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/globals/data.dart';
import 'package:shopping_app/globals/validators.dart';
import 'package:shopping_app/models/user.dart';
import 'package:shopping_app/screens/main_screen.dart';
import 'package:shopping_app/screens/user_screen_navigator.dart';
import 'package:shopping_app/widgets/alert_with_icon.dart';
import 'package:shopping_app/widgets/main_logo.dart';
import 'package:shopping_app/widgets/user_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String currentLatitude = "";
  String currentLongitude = "";

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repassowordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const MainLogo(),
                const SizedBox(height: 30),
                Text("Sign Up",style: GoogleFonts.poppins(color: mainColor,fontSize: 20,fontWeight: FontWeight.w500)),
                const SizedBox(height: 15),
                UserInput(label: 'Enter your name',type: 'name',controller: nameController,validator: nameValidator,maxLength: 20),
                const SizedBox(height: 15),
                UserInput(label: 'Enter your email',type: 'email',controller: emailController,validator: emailValidator,maxLength: 40),
                const SizedBox(height: 15),
                UserInput(label: 'Enter password',type: 'password',controller: passwordController,validator: passwordValidator,maxLength: 16),
                const SizedBox(height: 15),
                UserInput(label: 'Confirm passoword',type: 'password',controller: repassowordController,validator: repassowordValidator,maxLength: 16),
                const SizedBox(height: 50),
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(mainColor)),
                  onPressed: () async {
                    if (isValidName && isValidEmail && isPasswordMatch) {
                      try {
                        Position position =await Geolocator.getCurrentPosition();
                        currentLatitude = position.latitude.toString();
                        currentLongitude = position.longitude.toString();
                      }
                      catch (err) {
                        await showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              elevation: 10,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                              alignment: Alignment.center,
                              title: Text("Access to current location", style: GoogleFonts.poppins(),),
                              content: Text("Please provide your location for delivery purposes.", style: GoogleFonts.poppins(),),
                              actions: [
                                TextButton(
                                  style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(mainColor)),
                                  onPressed: () async {
                                    await Geolocator.openLocationSettings();
                                    Position position =await Geolocator.getCurrentPosition();
                                    currentLatitude = position.latitude.toString();
                                    currentLongitude = position.longitude.toString();
                                    },
                                  child: Text("OK", style: GoogleFonts.poppins(
                                    color: Colors.white
                                  ),)
                                ),
                                TextButton(
                                  onPressed: () {Navigator.pop(context);},
                                  child: Text("NOT NOW", style: GoogleFonts.poppins(
                                    color: mainColor
                                  ),))
                              ],
                            );
                          }
                        );
                      }
                      users.add(
                        User(name: currentName,
                        email: currentEmail,
                        password: currentPassword,
                        latitude: currentLatitude.isEmpty ? "0" : currentLatitude.toString(),
                        longitude: currentLongitude.isEmpty? "0" : currentLongitude.toString(),)
                      );
                      nameController.clear();
                      emailController.clear();
                      passwordController.clear();
                      repassowordController.clear();
                      await showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertWithIcon(
                            alert: "Account Created",
                            icon: Icons.check_circle_outline_outlined,
                            iconColor: Colors.green
                          );
                        }
                      );
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return const MainScreen();
                    }));
                    }
                    else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertWithIcon(
                            alert: "Invalid Data",
                            icon: Icons.error_outline_outlined,
                            iconColor: Colors.red
                          );
                        }
                      );
                    }
                  },
                  child: Text("Create Account", style: GoogleFonts.poppins(color: Colors.white)))
                ],
              ),
            ),
          ),
        ));
  }
}
