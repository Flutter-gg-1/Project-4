import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void showAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Animate(
          effects: const [MoveEffect()],
          child: AlertDialog(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Spring Sales"),
                Icon(
                  Icons.flare_rounded,
                  size: 30,
                  color: Color.fromARGB(255, 247, 200, 216),
                )
              ],
            ),
            titleTextStyle:
                const TextStyle(color: Color(0xff484646), fontSize: 26.04),
            actionsAlignment: MainAxisAlignment.center,
            contentTextStyle: const TextStyle(
                color: Color.fromARGB(255, 207, 157, 174), fontSize: 20),
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
                      style: TextStyle(color: Colors.black38, fontSize: 18))),
              const SizedBox(height: 80)
            ],
          ),
        );
      });
}
