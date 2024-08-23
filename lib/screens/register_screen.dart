import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/login_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmationController = TextEditingController();
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
                    height: 20,
                  ),
                  LoginTextfield(
                      hint: 'Password Confirmation',
                      controller: confirmationController,
                      password: passwordController.text),
                  ElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          setState(() {
                            // save user info
                            print('Success');
                          });
                        }
                      },
                      child: Text('Register'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
