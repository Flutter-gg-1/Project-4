import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:project4/Home/home.dart';

class BottomNav extends StatefulWidget {
  @override
  State createState() {
    return _BottomNav();
  }
}

class _BottomNav extends State {
  Widget? _child;

  @override
  void initState() {
    _child = const Home();
    super.initState();
  }

  @override
  Widget build(context) {
    // Build a simple container that switches content based of off the selected navigation item
    return MaterialApp(
      home: Scaffold(
        extendBody: true,
        body: _child,
        bottomNavigationBar: FluidNavBar(
          animationFactor: BorderSide.strokeAlignOutside,
          icons: [
            FluidNavBarIcon(
                icon: Icons.house,
                backgroundColor: Color(0xffF05A7E),
                extras: {"label": "home"}),
            FluidNavBarIcon(
                icon: Icons.bookmark_border,
                backgroundColor: Color(0xffF05A7E),
                extras: {"label": "bookmark"}),
            FluidNavBarIcon(
                icon: Icons.apps,
                backgroundColor: Color(0xffF05A7E),
                extras: {"label": "partner"}),
            FluidNavBarIcon(
                svgPath: "assets/conference.svg",
                backgroundColor: Color(0xffF05A7E),
                extras: {"label": "conference"}),
          ],
          onChange: _handleNavigationChange,
          style: FluidNavBarStyle(
            iconUnselectedForegroundColor: Colors.white,
            iconSelectedForegroundColor: Color(0xff821131),
          ),
          scaleFactor: 1.5,
          defaultIndex: 1,
          itemBuilder: (icon, item) => Semantics(
            label: icon.extras!["label"],
            child: item,
          ),
        ),
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = const Home();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        child: _child,
      );
    });
  }
}
