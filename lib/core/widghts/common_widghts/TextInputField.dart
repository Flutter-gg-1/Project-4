import 'package:flutter/material.dart';
import 'package:project_04/core/constants/colors.dart';

class TextInputField extends StatelessWidget {
  final String text;
  const TextInputField({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(color: AppColors.primaryColor),
      ),
    );
  }
}