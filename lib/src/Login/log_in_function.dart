import 'package:flutter/material.dart';
import 'package:project4/Bottom_Nav/bottom_nav.dart';
import 'package:project4/Home/home.dart';

void logIn(BuildContext context, String userName, String password) {
  if (userName.isEmpty || password.isEmpty) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(
              child: Text(
            'kindly Check your email or password',
            style: TextStyle(fontSize: 15),
          )),
          actions: [
            TextButton(
              child: const Center(child: Text('Done')),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  } else {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BottomNav()),
    );
  }
}
