import 'package:flutter/material.dart';
import 'package:project_4/feature/pages/welcome_screen/intro/page_1.dart';
import 'package:project_4/feature/pages/welcome_screen/intro/page_2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/all_file.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 1);
              });
            },
            children: const [
              Page1(),
              Page2(),
            ],
          ),
          Align(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                        (route) => false);
                  },
                  child: Text(
                    'skip',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
                SmoothPageIndicator(controller: _controller, count: 2),
                onLastPage
                    ? TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                              (route) => false);
                        },
                        child: Text(
                          'done',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      )
                    : TextButton(
                        onPressed: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                          "next",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
