import 'package:flutter/material.dart';
import 'package:project_4/src/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.deepOrange,
      ),
      home: SplashScreen(),
    );
  }
}
