import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'log_in_function.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Image.asset(
                    'lib/Logo/3553710.jpg',
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.1,
                ),
                TextFormField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    hintText: 'User name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                TextFormField(
                  controller: passwordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
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
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xffF05A7E)),
                    ),
                    onPressed: () {
                      logIn(context, userNameController.text,
                          passwordController.text);
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const Text(
                  'Or you can log in With',
                  style: TextStyle(color: Color(0xff125B9A)),
                ),
                const Text(
                  '_________________________________',
                  style: TextStyle(color: Color(0xff125B9A)),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
