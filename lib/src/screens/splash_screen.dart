import 'package:flutter/material.dart';
import 'package:project_4/src/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    // Duration of splash screen display
    await Future.delayed(Duration(seconds: 5), () {});

    // Navigate to HomeScreen after delay
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      'assets/images/project_4_test.png',
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 258,
                    child: Container(
                      width: 296,
                      height: 296,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Opacity(
                              opacity: 0.70,
                              child: Container(
                                width: 296,
                                height: 296,
                                decoration: ShapeDecoration(
                                  color: Colors.black,
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 296,
                              height: 296,
                              decoration: ShapeDecoration(
                                shape: OvalBorder(),
                              ),
                              child: ProgressIndicatorExample(),
                            ),
                          ),
                          Positioned(
                            left: 3.80,
                            top: 4,
                            child: Opacity(
                              opacity: 0.55,
                              child: Container(
                                width: 288,
                                height: 288,
                                decoration: ShapeDecoration(
                                  shape: OvalBorder(
                                    side: BorderSide(
                                        width: 1, color: Colors.white),
                                  ),
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(150.0)),
                                    child: Image.asset(
                                      'assets/logo/6427724.jpg',
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProgressIndicatorExample extends StatefulWidget {
  const ProgressIndicatorExample({super.key});

  @override
  State<ProgressIndicatorExample> createState() =>
      _ProgressIndicatorExampleState();
}

class _ProgressIndicatorExampleState extends State<ProgressIndicatorExample>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: false);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: controller.value,
      color: Colors.white70,
      // strokeWidth: 3,
      // semanticsLabel: 'Circular progress indicator',
    );
  }
}
