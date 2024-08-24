import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/nav_bar_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavBarWidget()
    );
  }
}
