import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Image(
              image: AssetImage('assets/images/intro/logo.png'),
              width: 400,
              height: 400,
            ),
            // CustomPaint(
            //   size: const Size(828, 820),
            //   painter: RPSCustomPainter(),
            // ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Please click on the button below to continue'),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
