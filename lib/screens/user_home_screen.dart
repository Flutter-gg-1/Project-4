import 'dart:developer';

import 'package:flutter/material.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: TextButton(
          onPressed: () {
            log("message");
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Image.asset('assets/logo.png', width: 120),
          ),
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.red,
        child: Column(
          children: [
            Text("data1"),
            Text("data2"),
            Text("data3"),
            Text("data4"),
            Text("data5"),
          ],
        ),
      ),
    );
  }
}
