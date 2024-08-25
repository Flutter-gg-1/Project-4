import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  // Variables to track errors
  String? _emailError;
  String? _passwordError;
  String? _confirmPasswordError;

  void _register() {
    // Ensure that the form state is not null before validating

    if (_emailError == null &&
        _passwordError == null &&
        _confirmPasswordError == null &&
        _emailController.text.isNotEmpty) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
  }

  // Function to validate email input
  void _validateEmail(String value) {
    if (value.isEmpty) {
      setState(() {
        _emailError = 'Please enter your email';
      });
    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      setState(() {
        _emailError = 'Please enter a valid email address';
      });
    } else {
      setState(() {
        _emailError = null;
      });
    }
  }

  // Function to validate password input
  void _validatePassword(String value) {
    if (value.isEmpty) {
      setState(() {
        _passwordError = 'Please enter your password';
      });
    } else if (value.length < 6) {
      setState(() {
        _passwordError = 'Password must be at least 6 characters';
      });
    } else {
      setState(() {
        _passwordError = null;
      });
    }
  }

  // Function to validate confirm password input
  void _validateConfirmPassword(String value) {
    if (value != _passwordController.text) {
      setState(() {
        _confirmPasswordError = 'Passwords do not match';
      });
    } else {
      setState(() {
        _confirmPasswordError = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 300,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: -20,
                      height: 300,
                      width: width,
                      child: FadeInUp(
                          duration: const Duration(seconds: 1),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/background.png'),
                                    fit: BoxFit.fill)),
                          )),
                    ),
                    Positioned(
                      height: 320,
                      width: width + 20,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1000),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/background-2.png'),
                                    fit: BoxFit.fill)),
                          )),
                    ),
                    Positioned(
                      top: 15,
                      left: 40,
                      height: 320,
                      width: width + 20,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1000),
                          child: Container(
                            child: Text(
                              'Welcome',
                              style: GoogleFonts.qwitcherGrypen(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 80,
                                  color: Color.fromRGBO(33, 27, 53, 0.6)),
                            ),
                          )),
                    ),
                    Positioned(
                      top: 100,
                      left: 105,
                      height: 320,
                      width: width + 20,
                      child: FadeInUp(
                          duration: const Duration(milliseconds: 1000),
                          child: Container(
                            child: Text('Lavender Store ..',
                                style: GoogleFonts.modernAntiqua(
                                    fontSize: 15, color: Colors.white)),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Color.fromRGBO(49, 39, 79, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeInUp(
                        duration: const Duration(milliseconds: 1700),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(196, 135, 198, .3)),
                              boxShadow: [
                                const BoxShadow(
                                  color: Color.fromRGBO(196, 135, 198, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 18),
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color.fromRGBO(
                                                196, 135, 198, .3)))),
                                child: TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Email',
                                    errorText: _emailError,
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  onChanged: (value) {
                                    _validateEmail(value);
                                  },
                                ),
                              ),
                              //               TextFormField(

                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Color.fromRGBO(
                                                196, 135, 198, .3)))),
                                child: TextFormField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Password',
                                    errorText: _passwordError,
                                  ),
                                  onChanged: (value) {
                                    _validatePassword(value);
                                  },
                                ),
                              ),
                              //               TextFormField(

                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: TextFormField(
                                  controller: _confirmPasswordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Password',
                                    errorText: _confirmPasswordError,
                                  ),
                                  onChanged: (value) {
                                    _validateConfirmPassword(value);
                                  },
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 15,
              ),
              FadeInUp(
                  duration: const Duration(milliseconds: 1900),
                  child: MaterialButton(
                    onPressed: _register,
                    color: const Color.fromRGBO(49, 39, 79, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 50,
                    child: const Center(
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 5,
              ),
              FadeInUp(
                  duration: const Duration(milliseconds: 1700),
                  child: Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          child: const Text(
                            "Already have an account? Login",
                            style: TextStyle(
                                color: Color.fromRGBO(196, 135, 198, 1)),
                          )))),
            ]),
      ),
    );
  }
}
