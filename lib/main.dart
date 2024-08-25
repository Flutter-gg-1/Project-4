import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    // MainApp()
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: 'assets/splash.png',
        centered: true,
        animationDuration: Duration(seconds: 5),
        nextScreen: MainScreen(),
        backgroundColor: bgColor,
      )
    );
  }
}