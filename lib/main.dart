import 'package:flutter/material.dart';
import 'package:shopping_app/home_screen.dart';
import 'package:shopping_app/landing_screen.dart';
import 'package:shopping_app/login_screen.dart';
import 'package:shopping_app/register_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
