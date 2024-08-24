import 'package:coffeshop_app/shape/login_shape.dart';
import 'package:coffeshop_app/src/home_screen.dart';
import 'package:coffeshop_app/src/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF2D7),
      floatingActionButton: TextButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupScreen(),
              )),
          child: const Text('Signup')),
      body: SafeArea(
          child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width,
                MediaQuery.of(context).size.height),
            painter: RPSCustomPainter(),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              left: MediaQuery.of(context).size.width / 2.9,
              child: Text(
                'Welcome',
                style: GoogleFonts.dancingScript(
                    color: const Color.fromARGB(255, 205, 103, 103),
                    fontSize: 35),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              left: MediaQuery.of(context).size.width / 10,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          hintText: 'Username',
                          hintStyle: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFFC9CBD0),
                              height: 2),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(16)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.black),
                              borderRadius: BorderRadius.circular(16)),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      margin: const EdgeInsets.symmetric(vertical: 25),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          hintText: 'password',
                          hintStyle: const TextStyle(
                              fontSize: 15,
                              color: Color(0xFFC9CBD0),
                              height: 2),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(16)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.black),
                              borderRadius: BorderRadius.circular(16)),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                        (route) => false,
                      ),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.4,
                              MediaQuery.of(context).size.height / 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor:
                              const Color.fromARGB(255, 223, 140, 62)),
                      child: Text(
                        'Login',
                        style: GoogleFonts.merienda(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(),
                    Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text('Forgot password?'))),
                  ],
                ),
              )),
        ],
      )),
    );
  }
}
