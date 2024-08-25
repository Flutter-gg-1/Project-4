import 'dart:ui';
import 'package:flutter/material.dart';
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
    if (value.isEmpty) {
      setState(() {
        _confirmPasswordError = 'Please confirm your password';
      });
    } else if (value != _passwordController.text) {
      setState(() {
        _confirmPasswordError = 'Passwords do not match';
      });
    } else {
      setState(() {
        _confirmPasswordError = null;
      });
    }
  }

  void _register() {
    if (_passwordError == null &&
        _confirmPasswordError == null &&
        _emailError == null &&
        _emailController.text.isNotEmpty) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/project_4_test.png'),
            // Replace with your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Fahad Store',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'For PC Gamers',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 50),

                /*
                *
                *
                * Form fields
                *
                *
                * */
                // Add blur effect to the form
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 30),
                        /*
                        *
                        *
                        * Email input field
                        *
                        *
                        * */
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'fahad@alharbi.com',
                            hintStyle: TextStyle(color: Colors.grey),
                            errorStyle: TextStyle(
                                fontSize: 12,
                                color: Colors.red,
                                backgroundColor: Colors.white),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            _validateEmail(value);
                          },
                        ),
                        SizedBox(height: 10),

                        /*
                        *
                        *
                        * Password input field
                        *
                        *
                        * */
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            errorText: _emailError,
                            errorStyle: TextStyle(
                                fontSize: 12,
                                color: Colors.red,
                                backgroundColor: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          controller: _passwordController,
                          onChanged: (value) {
                            _validatePassword(value);
                          },
                        ),
                        SizedBox(height: 10),

                        /*
                        *
                        *
                        * Confirm password input field
                        *
                        *
                        * */
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            errorText: _confirmPasswordError,
                            errorStyle: TextStyle(
                                fontSize: 12,
                                color: Colors.red,
                                backgroundColor: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          controller: _confirmPasswordController,
                          onChanged: (value) {
                            _validateConfirmPassword(value);
                          },
                        ),
                        SizedBox(height: 20),

                        /*
                        *
                        *
                        * * Sign in button
                        *
                        *
                        * */
                        ElevatedButton(
                          onPressed: () {
                            // Handle sign in action
                            _register();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            textStyle: TextStyle(fontSize: 18),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blueAccent,
                                  Colors.purpleAccent
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                minWidth: 200.0,
                                minHeight: 50.0,
                              ),
                              alignment: Alignment.center,
                              child: Text('Create an account',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            // Handle sign up action
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text(
                            "have an account? Sign In",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
