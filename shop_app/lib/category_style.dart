import 'package:flutter/material.dart';

class CategoryStyle extends StatelessWidget {
  final String title;
  const CategoryStyle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            alignment: Alignment.centerLeft,
            fixedSize: WidgetStateProperty.all(const Size(200, 50)),
            shape: WidgetStateProperty.all(
                LinearBorder.bottom(side: const BorderSide(), alignment: 2))),
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(color: Color(0xff5d665b)),
        ));
  }
}
