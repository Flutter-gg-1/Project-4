import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/models/user.dart';

class UserHomeScreen extends StatefulWidget {
  final User? user;
  const UserHomeScreen({super.key, required this.user});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Image.asset('assets/logo.png', width: 120),
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.red,
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
