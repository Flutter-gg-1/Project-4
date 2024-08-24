import 'package:flutter/material.dart';
import 'package:shopping_app/screens/login_screen.dart';
import 'package:shopping_app/utils/data/user_data.dart';
import 'package:shopping_app/widgets/login_textfield.dart';

import '../models/user.dart';
import '../widgets/alert_message.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 186, 237, 233),
        title: Text(
          'Jeem',
          style: TextStyle(
              fontSize: 30, color: Colors.blue[400], fontFamily: 'Matemasie'),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/background-main.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
              top: 10,
              left: MediaQuery.of(context).size.width / 5,
              child: Text(
                'Registration',
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.green[700],
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
            top: 100,
            left: 50,
            child: Form(
              key: key,
              child: Column(
                children: [
                  LoginTextfield(hint: 'UserName', controller: nameController),
                  const SizedBox(
                    height: 20,
                  ),
                  LoginTextfield(hint: 'email', controller: emailController),
                  const SizedBox(
                    height: 20,
                  ),
                  LoginTextfield(
                      hint: 'Password', controller: passwordController),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                          elevation: 20,
                          surfaceTintColor: Colors.green,
                          fixedSize: const Size(150, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 236, 202, 169)),
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          users.add(User.fromJson({
                            'username': nameController.text,
                            'password': passwordController.text,
                            'email': emailController.text
                          }));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                          setState(() {});
                        } else {
                           showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertMessage(section: 'register');
                          });
                        }
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
