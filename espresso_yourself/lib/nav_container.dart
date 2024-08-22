import 'package:espresso_yourself/favorites/favorites_screen.dart';
import 'package:espresso_yourself/home/home_screen.dart';
import 'package:espresso_yourself/popular/popular_screen.dart';
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
    const PopularScreen(),
    const HomeScreen(),
    const FavoritesScreen(),
  ];

  List<BottomNavigationBarItem> icons = [
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.flame_fill),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.heart_fill),
      label: '',
    ),
  ];

  void _setDestination(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width - 24,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: BottomNavigationBar(
              items: icons,
              currentIndex: idx,
              iconSize: 32,
              selectedItemColor: C.text,
              backgroundColor: C.secondary,
              onTap: _setDestination,
            ),
          ),
        ),
      ),
      body: Center(child: tabs[idx]),
    );
  }
}
