import 'package:flutter/material.dart';
import '../../../core/all_file.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.colorWhite,
      body: Column(
        children: [
          const SizedBox(height: 80),
          const Image(image: AssetImage('assets/images/intro/int1.png')),
          const SizedBox(height: 80),
          // login tet fiel
          TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              labelText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // password text field
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock),
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // login button
        ],
      ),
    );
  }
}
