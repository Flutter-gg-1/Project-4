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

          MaterialButton(
            color: Colors.black,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Login Successful'),
                      backgroundColor: Colors.white,
                      content: const Text('You have successfully logged in'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                            },
                            child: const Text('OK'))
                      ],
                    );
                  });
            },
            child: const Text('Log in', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
