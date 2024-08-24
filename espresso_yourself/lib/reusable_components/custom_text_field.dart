import 'package:flutter/material.dart';

import '../extensions/color_ext.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.txtController,
    required this.hint,
    required this.icon,
    required this.isObscure,
    required this.validation,
  });

  final TextEditingController txtController;
  final String hint;
  final IconData icon;
  final bool isObscure;
  final Function(String value) validation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: TextFormField(
        style: const TextStyle(color: C.text),
        controller: txtController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: isObscure,
        enableSuggestions: false,
        autocorrect: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          fillColor: C.primary,
          filled: true,
          suffixIcon: Icon(icon),
          hintText: hint,
          hintStyle: TextStyle(color: C.text.withOpacity(0.6)),
          errorStyle: const TextStyle(color: C.accent),
        ),
        validator: (value) => validation(value ?? ''),
      ),
    );
  }
}
