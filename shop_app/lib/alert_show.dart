import 'package:flutter/material.dart';

void showAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Spring Sales"),
          titleTextStyle:
              const TextStyle(color: Color(0xff484646), fontSize: 26.04),
          actionsAlignment: MainAxisAlignment.center,
          contentTextStyle:
              const TextStyle(color: Color(0xff5d665b), fontSize: 20),
          content: Container(
            alignment: Alignment.center,
            height: 90,
            width: 319,
            child: const Text(
                "The sales will last until the end of the spring use WX323 code and order now!"),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Close",
                    style: TextStyle(color: Colors.black, fontSize: 18))),
            const SizedBox(height: 80)
          ],
        );
      });
}
