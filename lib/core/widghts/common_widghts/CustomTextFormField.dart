import 'package:flutter/material.dart';
import 'package:project_04/core/constants/colors.dart';

import '../../utils/validators.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final IconData prefixIcon;
  const CustomTextFormField({
    super.key,
    required this.controller, required this.hint, required this.prefixIcon,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: AppColors.accentColor,
          fontWeight: FontWeight.normal,
          fontSize: 16,
        ),
        prefixIcon: Icon(prefixIcon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
          ),)
    
      ),
      validator: validateEmail,
    );
  }
}

