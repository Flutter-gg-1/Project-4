import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Text('Welcome'),
            SizedBox(height: 30),
            Text('Please click on the button below to continue'),
          ],
        ),
      ),
    );
  }
}
