import 'package:flutter/material.dart';
import 'package:shopping_app/pages/home_page.dart';
import 'package:shopping_app/shared.dart';

// import 'package:my_text_field/pages/MyTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    decoration: InputDecoration(
                      hintText: "enter your email",
                      label: const Text("Email"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (!value!.contains("@")) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: true,
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    decoration: InputDecoration(
                      hintText: "enter your password",
                      label: const Text("Password"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        bool userFound =
                            false; // Flag to check if user is found

                        for (var user in users) {
                          if (email == user.email &&
                              password == user.password) {
                            userFound = true;
                            loggedIn = user;
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return const HomePage();
                              }),
                            );
                            break; // Exit the loop once the user is found
                          }
                        }

                        if (!userFound) {
                          // Show SnackBar only if user is not found
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Incorrect email or password'),
                            ),
                          );
                        }
                      }
                      setState(() {});
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
