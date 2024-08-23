import 'package:flutter/material.dart';

import 'background_custom_shape.dart';
import 'logo.dart';
import 'registration_screens/regester.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CustomPaint(
                size: const Size(360, 511),
                painter: RPSCustomPainter(),
              ),
              Positioned(
                top: 150,
                left: 135,
                child: CustomPaint(
                  size: const Size(160, 173),
                  painter: RPSCustomPainterLogo(),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 60),
            child: Text(
              "invites..",
              style:
                  TextStyle(fontSize: 20, color: Color.fromARGB(255, 6, 1, 1)),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 60),
            child: Text(
              "An easy way to buy\nyour invitation card",
              style:
                  TextStyle(fontSize: 20, color: Color.fromARGB(255, 6, 1, 1)),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 60),
            child: SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const Regester();
                  }));
                },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xff9B74A9))),
                child: const Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
