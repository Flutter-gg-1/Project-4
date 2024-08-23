import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:espresso_yourself/extensions/image_ext.dart';
import 'package:espresso_yourself/favorites/favorites_screen.dart';
import 'package:espresso_yourself/home/home_screen.dart';
import 'package:espresso_yourself/popular/popular_screen.dart';
import 'package:espresso_yourself/reusable_components/background_img_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'extensions/color_ext.dart';

class NavContainer extends StatefulWidget {
  const NavContainer({super.key});

  @override
  State<NavContainer> createState() => _NavContainerState();
}

class _NavContainerState extends State<NavContainer> {
  int idx = 1;
  List<Widget> tabs = [
    const PopularScreen(),
    const HomeScreen(),
    const FavoritesScreen(),
  ];

  List<IconData> icons = [
    CupertinoIcons.flame_fill,
    CupertinoIcons.home,
    CupertinoIcons.heart_fill,
  ];

  FloatingActionButtonLocation setFloatingBtnPosition() {
    switch (idx) {
      case 0:
        return FloatingActionButtonLocation.startDocked;
      case 1:
        return FloatingActionButtonLocation.centerDocked;
      case 2:
        return FloatingActionButtonLocation.endDocked;
      default:
        return FloatingActionButtonLocation.centerDocked;
    }
  }

  SvgAssetLoader _getSVGAsset() {
    switch (idx) {
      case 0:
        return AppSVG.flame;
      case 1:
        return AppSVG.home;
      case 2:
        return AppSVG.heart;
      default:
        return AppSVG.home;
    }
  }

  void _setDestination(int index) {
    _getSVGAsset();
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: SizedBox(
          width: 80,
          height: 80,
          child: FloatingActionButton(
            backgroundColor: C.accent,
            shape: const CircleBorder(),
            onPressed: () => (),
            child: Stack(alignment: Alignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SvgPicture(_getSVGAsset(), fit: BoxFit.contain),
              ), // Main icon
            ]),
          ),
        ),
      ),
      floatingActionButtonLocation: setFloatingBtnPosition(),
      body: Stack(
        children: [const BackgroundImgDecoration(), tabs[idx]],
      ),
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width - 24,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: AnimatedBottomNavigationBar(
              backgroundColor: C.secondary,
              height: 80,
              icons: icons,
              iconSize: 40,
              activeColor: Colors.transparent,
              inactiveColor: C.text,
              activeIndex: idx,
              gapLocation: GapLocation.none,
              notchSmoothness: NotchSmoothness.softEdge,

              onTap: (index) => setState(() => _setDestination(index)),
              //other params
            ),
          ),
        ),
      ),
      backgroundColor: C.bg,
      // body: Center(child: tabs[idx]),
    );
  }
}
