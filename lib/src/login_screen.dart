import 'package:flutter/material.dart';
import 'package:shopping_app_project/src/bottom_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_sofa.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              children: [
                Text(
                    'Feel your personal expression by choosing the latest design of furniture'),
                SizedBox(
                  height: 15,
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SizedBox(
                    width: 350.85,
                    height: 45.58,
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Card number',
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 48, 54, 58),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color(0xffAABB5D),
                            width: 2.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        }

                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 39),
                  child: SizedBox(
                    width: 350.85,
                    height: 45.58,
                    child: TextFormField(
                      controller: passController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color(0xffAABB5D),
                            width: 2.0,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 48,
              width: 200,
              decoration: const BoxDecoration(
                  color: Color(0xffAABB5D),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNav()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
