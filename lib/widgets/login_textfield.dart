import 'package:flutter/material.dart';

class LoginTextfield extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final String password;
  const LoginTextfield(
      {super.key,
      required this.hint,
      required this.controller,
      this.password = ''});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.green[900]!),
            ),
            errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red[700]!)),
            hintText: hint,
            hintStyle: const TextStyle(
              fontSize: 16,
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.yellow[800]!),
                borderRadius: const BorderRadius.all(Radius.circular(5)))),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$hint cannot be empty';
          } else if (value.contains(' ') && hint == 'Username') {
            return 'Username cannot contain space';
          } else if (value != password && hint == 'Password Confirmation') {
            return 'Passwords do not matcha';
          }
          return null;
        },
      ),
    );
  }
}
