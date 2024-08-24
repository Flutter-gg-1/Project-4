import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'log_in_function.dart';


// ignore: must_be_immutable
class LogIn extends StatelessWidget {
  LogIn({super.key});
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Image.asset(
                    'lib/Logo/3553710.jpg',
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Text(
                  'Log in',
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 30,
                    color: const Color(0xffF05A7E),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: userNameController,
                  decoration: InputDecoration(
                    hintText: 'User name',
                    filled: true,
                    fillColor: const Color.fromARGB(255, 243, 240, 240),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.02,
                      horizontal: screenWidth * 0.05,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    enabled: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Kindly Enter the User name';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: const Color.fromARGB(255, 243, 240, 240),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.02,
                      horizontal: screenWidth * 0.05,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Kindly Enter the password';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                SizedBox(
                  width: screenWidth * 0.9,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        const Color(0xffF05A7E),
                      ),
                    ),
                    onPressed: () {
                      logIn(context, userNameController.text,
                          passwordController.text);
                    },
                    child: Text(
                      'Log in',
                      style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Text(
                  'Or you can log in With',
                  style: GoogleFonts.dmSerifDisplay(
                      color: const Color(0xff125B9A), fontSize: 17),
                ),
                const Text(
                  '_________________________________',
                  style: TextStyle(color: Color(0xff125B9A)),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInButton(
                      Buttons.Facebook,
                      mini: true,
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: screenWidth * 0.03,
                    ),
                    SignInButton(
                      Buttons.Apple,
                      mini: true,
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: screenWidth * 0.03,
                    ),
                    SignInButton(
                      Buttons.Twitter,
                      mini: true,
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: screenWidth * 0.03,
                    ),
                    SignInButton(
                      Buttons.Email,
                      mini: true,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
