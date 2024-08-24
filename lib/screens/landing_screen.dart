import 'package:flutter/material.dart';
import 'package:shopping_app/screens/login_screen.dart';
import 'package:shopping_app/screens/register_screen.dart';
import 'package:shopping_app/utils/blob.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 180,
            left: 140,
            child: SizedBox(
              height: 400,
              width: 400,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Animate(
                  child: CustomPaint(
                    size: const Size(200, 200),
                    painter: Blob(),
                  ),
                )
                    .tint(
                        color: Colors.red[100],
                        duration: const Duration(seconds: 5))
                    .scale(delay: 500.ms),
              ),
            ),
          ),
          Positioned(
            top: 145,
            left: 85,
            child: Animate(
              delay: const Duration(seconds: 5),
              child: Text('Jeem',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blue[800], fontFamily: 'Matemasie'),),
            ).fadeIn(duration: const Duration(seconds: 3))),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.3,
            left: MediaQuery.of(context).size.width / 5,
            child: const Row(
              children: [
                Text(
                  'Welcome to  ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
                Text(
                  'Jeem  ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white, fontFamily: 'Matemasie'),
                ),
                Text(
                  'Store',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.6,
            left: MediaQuery.of(context).size.width / 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                   style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                      elevation: 20,
                      surfaceTintColor: Colors.green,
                    backgroundColor: const Color.fromARGB(255, 236, 202, 169)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    child: const Text(
                      'Regiser',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                   style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                      elevation: 20,
                      surfaceTintColor: Colors.green,
                    backgroundColor: const Color.fromARGB(255, 236, 202, 169)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text(
                      'Login',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.83,
            child: SizedBox(
              height: 200,
              width: 200,
              child: Animate(
                      onPlay: (controller) => controller.repeat(),
                      child: Image.asset('assets/images/pushcart.png'))
                  .move(
                      duration: const Duration(seconds: 5),
                      begin: const Offset(-100, 0),
                      end: Offset(MediaQuery.of(context).size.width, 0)),
            ),
          ),
        ],
      ),
    );
  }
}
