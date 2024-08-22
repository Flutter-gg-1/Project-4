import 'package:flutter/material.dart';
import 'package:shop_app/on_bording.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _onBackToIntro(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const OnBoardingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("hi"),
      ),
    );
  }
}
