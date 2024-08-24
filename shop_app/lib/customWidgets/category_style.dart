import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryStyle extends StatelessWidget {
  final String title;
  Function()? onPressed;
  CategoryStyle({super.key, required this.title, this.onPressed()?});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            alignment: Alignment.centerLeft,
            fixedSize: WidgetStateProperty.all(const Size(200, 50)),
            shape: WidgetStateProperty.all(
                LinearBorder.bottom(side: const BorderSide(), alignment: 2))),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(color: Color(0xff5d665b)),
        ));
  }
}
