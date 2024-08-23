import 'package:flutter/material.dart';
import 'package:project_4/core/images/logo.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            CustomPaint(
              size: const Size(828, 820),
              painter: RPSCustomPainter(),
            ),
            const SizedBox(height: 30),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Please click on the button below to continue'),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
