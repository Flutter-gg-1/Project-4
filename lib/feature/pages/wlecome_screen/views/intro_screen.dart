import 'package:flutter/material.dart';
import 'package:project_4/feature/pages/wlecome_screen/intro/page_1.dart';
import 'package:project_4/feature/pages/wlecome_screen/intro/page_2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  // controller to keep track of which page we are on
  final PageController _controller = PageController();

  // keep track of if we are on the last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip
                TextButton(
                  onPressed: () {
                    // Navigator.pushAndRemoveUntil(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const PhoneLoginPage()),
                    //     (route) => false);
                  },
                  child: Text(
                    'skip',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),

                // dot indicator
                SmoothPageIndicator(controller: _controller, count: 2),

                // next or done
                onLastPage
                    ? TextButton(
                        onPressed: () {},
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
