import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:project4/Cart/cart.dart';
import 'package:project4/Home/home.dart';

class BottomNav extends StatefulWidget {
  final String name;
  final String? imagePath;

  BottomNav({required this.name, this.imagePath});

  @override
  State createState() {
    return _BottomNavState();
  }
}

class _BottomNavState extends State<BottomNav> {
  Widget? _child;

  @override
  void initState() {
    super.initState();
    _child = Home(name: widget.name, imagePath: widget.imagePath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              icon: Icons.shopping_cart,
              backgroundColor: Color(0xffF05A7E),
              extras: {"label": "bookmark"}),
        ],
        onChange: _handleNavigationChange,
        style: const FluidNavBarStyle(
            iconUnselectedForegroundColor: Colors.white,
            iconSelectedForegroundColor: Color(0xff821131),
            barBackgroundColor: Color.fromARGB(255, 235, 231, 219)),
        scaleFactor: 1.5,
        defaultIndex: 0,
        itemBuilder: (icon, item) => Semantics(
          label: icon.extras!["label"],
          child: item,
        ),
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = Home(name: widget.name, imagePath: widget.imagePath);
          break;
        case 1:
          _child = Cart(name: widget.name, imagePath: widget.imagePath);
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
