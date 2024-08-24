import 'package:flutter/material.dart';

class SettingStyle extends StatelessWidget {
  final String title;
  const SettingStyle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            alignment: Alignment.centerLeft,
            fixedSize: WidgetStateProperty.all(const Size(400, 50)),
            shape: WidgetStateProperty.all(LinearBorder.bottom(
                side: const BorderSide(color: Colors.black26)))),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(title,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xff5d665b),
                fontFamily: "DMSherifText",
              )),
        ));
  }
}
