import 'package:flutter/material.dart';
import 'package:shopping_app/screens/home_screen.dart';
import 'package:shopping_app/screens/item_screen.dart';
import 'package:shopping_app/screens/landing_screen.dart';
import 'package:shopping_app/screens/login_screen.dart';
import 'package:shopping_app/utils/navigation_heper.dart';
import 'package:shopping_app/screens/register_screen.dart';
import 'package:shopping_app/screens/explore_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationHelper()
    );
  }
}
