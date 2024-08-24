import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:espresso_yourself/reusable_components/background_img_decoration.dart';
import 'package:espresso_yourself/screens/favorites/favorites_screen.dart';
import 'package:espresso_yourself/screens/home/home_screen.dart';
import 'package:espresso_yourself/screens/popular/popular_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'extensions/color_ext.dart';

class NavContainer extends StatefulWidget {
  const NavContainer({super.key});

  @override
  State<NavContainer> createState() => _NavContainerState();
}

class _NavContainerState extends State<NavContainer> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 1);

  /// Controller to handle bottom nav bar and also handles initial page
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 1);

  int maxCount = 3;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  final List<Widget> bottomBarPages = [
    const PopularScreen(),
    const HomeScreen(),
    FavoritesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImgDecoration(),
          PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(
                bottomBarPages.length, (index) => bottomBarPages[index]),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: C.primary,
              showLabel: true,
              textOverflow: TextOverflow.visible,
              maxLine: 1,
              shadowElevation: 5,
              kBottomRadius: 28.0,
              notchGradient: const LinearGradient(
                  colors: [C.accent, Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),

              /// restart app if you change removeMargins
              removeMargins: false,
              bottomBarWidth: 500,
              showShadow: false,
              durationInMilliSeconds: 300,

              itemLabelStyle: const TextStyle(fontSize: 10),
              elevation: 1,
              bottomBarItems: const [
                // POPULAR
                BottomBarItem(
                  inActiveItem: Icon(
                    CupertinoIcons.flame_fill,
                    color: C.text,
                  ),
                  activeItem: Icon(
                    CupertinoIcons.flame_fill,
                    color: Colors.orange,
                  ),
                ),
                // HOME
                BottomBarItem(
                  inActiveItem: Icon(
                    CupertinoIcons.home,
                    color: C.text,
                  ),
                  activeItem: Icon(
                    CupertinoIcons.home,
                    color: C.text,
                  ),
                ),
                // FAVORITES
                BottomBarItem(
                  inActiveItem: Icon(
                    CupertinoIcons.heart_fill,
                    color: C.text,
                  ),
                  activeItem: Icon(
                    CupertinoIcons.heart_fill,
                    color: Colors.pink,
                  ),
                ),
              ],
              onTap: (index) {
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
    );
  }
}
