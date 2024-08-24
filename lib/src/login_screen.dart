import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            Container(
              height: 48,
              width: 200,
              decoration: const BoxDecoration(
                  color: Color(0xffAABB5D),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: TextButton(
                  onPressed: () {},
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
