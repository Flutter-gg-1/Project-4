import 'package:flutter/material.dart';
import 'package:shopping_app/utils/shapes/blob.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.transparent,
        body: SafeArea(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 180,
            left: 100,
            child: SizedBox(
              height: 400,
              width: 400,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Animate(
                  onPlay: (controller) {
                    controller.repeat();
                  },
                  child: CustomPaint(
                    size: const Size(200, 200),
                    painter: Blob1(),
                  ),
                )
                    .tint(
                        color: Colors.red[100], duration: Duration(seconds: 5))
                    .scale(delay: 500.ms),
              ),
            ),
          ),
          Center(
              child: Container(
            child: const Text(
              'data',
              style: TextStyle(color: Colors.white),
            ),
          )),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.7,
            child: SizedBox(
              height: 200,
              width: 200,
              child: Animate(
                      onPlay: (controller) => controller.repeat(),
                      child: Image.asset('assets/images/pushcart.png'))
                  .move(
                      duration: Duration(seconds: 5),
                      begin: Offset(-100, 0),
                      end: Offset(MediaQuery.of(context).size.width, 0)),
            ),
          ),
        ],
      ),
    ));
  }
}
