import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/globals/data.dart';
import 'package:shopping_app/globals/validators.dart';
import 'package:shopping_app/models/user.dart';
import 'package:shopping_app/screens/main_screen.dart';
import 'package:shopping_app/widgets/alert_with_icon.dart';
import 'package:shopping_app/widgets/main_logo.dart';
import 'package:shopping_app/widgets/user_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  
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
                    // check validity of inputs
                    if (isValidName && isValidEmail && isPasswordMatch) {
                      // if account exists
                      if(users.map((user)=>user.email).toList().contains(currentEmail)) {
                        await showDialog(context: context, builder: (context){
                          return const AlertWithIcon(alert: "Email is already used", icon: Icons.error_outline_outlined, iconColor: Colors.red);
                        });
                        return;
                      }
                      // otherwise, create account
                      else {
                        users.add(
                          User(name: currentName,
                          email: currentEmail,
                          password: currentPassword,
                          pic: 'assets/default_profile_pic.png')
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
                      }
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context){
                          return const MainScreen();
                        }), (predicate) => false);
                      }
                    // if input not valid
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
                  child: Text("Create Account", style: GoogleFonts.poppins(color: Colors.white))
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}