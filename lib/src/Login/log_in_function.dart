import 'package:flutter/material.dart';

void logIn(BuildContext context, String userName, String password) {
  if (userName.isEmpty || password.isEmpty) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
              child: Text(
            'kindly Check your email or password',
            style: TextStyle(fontSize: 15),
          )),
          actions: [
            TextButton(
              child: Center(child: Text('Done')),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  } else {
    print('Logging in with username: $userName and password: $password');
  }
}
