import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/login_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController wordController = TextEditingController();
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
                  LoginTextfield(hint: 'Password', controller: wordController),
                  ElevatedButton(onPressed: () {
                      if (key.currentState!.validate()) {
                    setState(() {
                      // check login success
                      print('Success');
                    });
                  }

                  }, child: Text('Submit'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
