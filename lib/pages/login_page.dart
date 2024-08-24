import 'package:flutter/material.dart';
import 'package:shopping_app/shared.dart';
import 'package:shopping_app/widgets/nav_bar_widget.dart';

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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 250,
                      child: Image.asset("assets/general/logo.png")),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff5355ca),
                        fontWeight: FontWeight.bold),
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
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        bool userFound = false;

                        for (var user in users) {
                          if (email == user.email &&
                              password == user.password) {
                            userFound = true;
                            loggedIn = user;
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return const NavBarWidget();
                              }),
                            );
                            break;
                          }
                        }

                        if (!userFound) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Incorrect email or password'),
                            ),
                          );
                        }
                      }
                      setState(() {});
                    },
                    child: Container(
                      height: 45,
                      width: 250,
                      decoration: BoxDecoration(
                        color: const Color(0xff5355ca),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                          child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
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
