import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';

class UserInput extends StatelessWidget {
  final String label;
  final String type;
  final TextEditingController controller;
  final Function? validator;
  final int maxLength;

  const UserInput({super.key, required this.label, required this.type, required this.controller, this.validator, required this.maxLength});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
        child: TextFormField(
          maxLength: maxLength,
          controller: controller,
          autovalidateMode: validator == null ? AutovalidateMode.disabled : AutovalidateMode.onUserInteraction,
          validator: validator != null ? (value) => validator!(value) : null,
          keyboardType: type == 'email' ? TextInputType.emailAddress : TextInputType.name,
          obscureText: type == 'password' ? true : false,
          onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
          decoration: InputDecoration(
            counterText: "",
            labelStyle: GoogleFonts.poppins(color: borderColor),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            label: Text(label),
            filled: true,
            fillColor: thirdColor.withOpacity(0.7),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: borderColor)
            ),
          ),
        ),
    );
  }
}