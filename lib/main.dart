import 'package:flutter/material.dart';
import 'package:shopping_app/src/screens/splash_screen.dart';
import 'package:shopping_app/bottom_navigation_bar.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CustomBottomNavigationBar());
  }
}
