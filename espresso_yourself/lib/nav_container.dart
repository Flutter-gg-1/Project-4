import 'package:espresso_yourself/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'extensions/color_ext.dart';

class NavContainer extends StatefulWidget {
  const NavContainer({super.key});

  @override
  State<NavContainer> createState() => _NavContainerState();
}

class _NavContainerState extends State<NavContainer> {
  int idx = 0;
  List<Widget> tabs = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  void _setDestination(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: C.secondary,
        onTap: (int index) => _setDestination(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.flame_fill),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill),
            label: '',
          ),
        ],
      ),
      body: Center(child: tabs[idx]),
    );
  }
}
