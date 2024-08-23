import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import '../extensions/color_ext.dart';
import '../extensions/image_ext.dart';
import '../nav_container.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.8,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: Img.bg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // MARK: - Background Image
                  Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Image(image: Img.logo, fit: BoxFit.fitHeight),
                  ),
                  Spacer(),
                  _MyPageView()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MyPageView extends StatefulWidget {
  const _MyPageView();

  @override
  State<_MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<_MyPageView> {
  final PageController _pageController = PageController(initialPage: 0);

  int selectedPage = 0;

  void _changePage(int value) {
    selectedPage = value;
    setState(() {});
  }

  void _navigateToHome(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const NavContainer()));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 1.4,
        child: Container(
          decoration: BoxDecoration(
            color: C.primary,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: PageViewDotIndicator(
                      currentItem: selectedPage,
                      count: 3,
                      unselectedColor: C.text.withOpacity(0.2),
                      selectedColor: C.text,
                      duration: const Duration(milliseconds: 200),
                      boxShape: BoxShape.circle,
                      onItemClicked: (index) {
                        _pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (value) => _changePage(value),
                    children: [
                      const Text('Exceptional Brews\n Every Time')
                          .styled(size: 28),
                      const Text('Your Daily Dose\n of Delight')
                          .styled(size: 28),
                      const Text('Where Every Cup\n is a Story')
                          .styled(size: 28),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: C.accent,
                          foregroundColor: C.text,
                        ),
                        onPressed: () => _navigateToHome(context),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Get started').styled(size: 24),
                              const SizedBox(width: 8),
                              const Icon(CupertinoIcons.arrow_right)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
