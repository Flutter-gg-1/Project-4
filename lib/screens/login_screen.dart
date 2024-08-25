import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_4_test/screens/home_screen.dart';
import 'package:project_4_test/screens/register_screen.dart';

// The main function is the entry point of the application
void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen()));

// The LoginScreen widget is the main widget for the login screen
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

// The _LoginScreenState class contains the state and logic for the LoginScreen widget
class _LoginScreenState extends State<LoginScreen> {
  // Controllers for the email and password text fields
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Variables to track errors in email and password fields
  String? _emailError;
  String? _passwordError;

  // Function to handle login
  _login() {
    // Check if there are no errors and both fields are not empty
    if (_emailError == null &&
        _passwordError == null &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      // Navigate to the HomeScreen if login is successful
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      // Show an error dialog if login fails
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // User must tap the button to dismiss
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Missing Account'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('\nPlease Enter your Email and Password'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
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

  // Build the UI of the login screen
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Top container with background images and welcome text
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
                                  image: AssetImage('assets/background-2.png'),
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
            // Login form and buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Login title
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
                  // Email and password input fields
                  FadeInUp(
                      duration: const Duration(milliseconds: 1700),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                                color: const Color.fromRGBO(196, 135, 198, .3)),
                            boxShadow: [
                              const BoxShadow(
                                color: Color.fromRGBO(196, 135, 198, .3),
                                blurRadius: 20,
                                offset: Offset(0, 18),
                              )
                            ]),
                        child: Column(
                          children: <Widget>[
                            // Email input field
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
                            // Password input field
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                            )
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  // Forgot password link
                  FadeInUp(
                      duration: const Duration(milliseconds: 1700),
                      child: Center(
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Color.fromRGBO(196, 135, 198, 1)),
                              )))),
                  const SizedBox(
                    height: 15,
                  ),
                  // Login button
                  FadeInUp(
                      duration: const Duration(milliseconds: 1900),
                      child: MaterialButton(
                        onPressed: _login,
                        color: const Color.fromRGBO(49, 39, 79, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: 50,
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  // Create account link
                  FadeInUp(
                      duration: const Duration(milliseconds: 2000),
                      child: Center(
                          child: TextButton(
                              onPressed: () {
                                // Navigate to the RegisterScreen
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => RegisterScreen()),
                                );
                              },
                              child: const Text(
                                "Create Account",
                                style: TextStyle(
                                    color: Color.fromRGBO(49, 39, 79, .6)),
                              )))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
