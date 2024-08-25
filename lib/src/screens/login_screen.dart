import 'dart:ui';
import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Variables to track errors
  String? _emailError;
  String? _passwordError;

  // Function to login
  void _login() {
    if (_emailError == null &&
        _passwordError == null &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      // Perform login logic (not implemented)
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      // ),
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
                            errorText: _emailError,
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
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            _validatePassword(value);
                          },
                        ),
                        SizedBox(height: 10),
                        /*
                        *
                        * Forgot Password button
                        * it will show alert dialog box
                        *
                        * */
                        TextButton(
                          onPressed: () async {
                            return showDialog<void>(
                              context: context,
                              barrierDismissible: false,
                              // user must tap button!
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Soon...'),
                                  content: const SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text(
                                            'This functionality is not implemented yet.'),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text('Approve'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.white),
                          ),
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
                            _login();
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
                              child: Text('Sign in',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'or sign in using',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.facebook),
                              color: Colors.blue,
                              onPressed: () {
                                // Handle Facebook sign in
                              },
                            ),
                            IconButton(
                              // icon: Icon(Icons.g_translate),
                              icon: FaIcon(FontAwesomeIcons.google),
                              // Assuming this is for Google
                              color: Colors.red,
                              onPressed: () {
                                // Handle Google sign in
                              },
                            ),
                            IconButton(
                              // icon: Icon(Icons.g_translate),
                              icon: FaIcon(FontAwesomeIcons.apple),
                              // Assuming this is for Google
                              color: Colors.black,
                              onPressed: () {
                                // Handle Google sign in
                              },
                            ),
                            IconButton(
                              // icon: Icon(Icons.g_translate),
                              icon: FaIcon(FontAwesomeIcons.xTwitter),
                              // Assuming this is for Google
                              color: Colors.white,
                              onPressed: () {
                                // Handle Google sign in
                              },
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle sign up action
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()),
                            );
                          },
                          child: Text(
                            "Don't have an account? Sign Up",
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
