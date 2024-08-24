import 'package:flutter/material.dart';
import 'package:shopping_app/utils/navigation_helper.dart';
import 'package:shopping_app/utils/data/user_data.dart';
import 'package:shopping_app/widgets/login_textfield.dart';

import '../widgets/alert_message.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
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
            top: 200,
            left: 50,
            child: Form(
              key: key,
              child: Column(
                children: [
                  LoginTextfield(hint: 'Username', controller: nameController),
                  const SizedBox(
                    height: 20,
                  ),
                  LoginTextfield(
                      hint: 'Password', controller: passwordController),
                  const SizedBox(
                    height: 70,
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
                          for (var user in users) {
                            if (user.username == nameController.text &&
                                user.password == passwordController.text) {
                              currentUser = user;
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationHelper(
                                            user: user,
                                          )));
                            }
                          }
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertMessage(section: 'login');
                              });
                        }
                      },
                      child: const Text(
                        'Login',
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
