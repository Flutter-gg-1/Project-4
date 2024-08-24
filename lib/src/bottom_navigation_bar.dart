import 'package:flutter/material.dart';
import 'package:project4/src/bottom_navigation_bar_screens/favorite_screen.dart';
import 'package:project4/src/bottom_navigation_bar_screens/home_screen.dart';
import 'package:project4/src/bottom_navigation_bar_screens/profile_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    const HomeScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];

  final _iconColors = [
    const Color(0xff582277),
    const Color(0xffffdbdf),
    const Color(0xffFEFBD8),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          SalomonBottomBar(
            currentIndex: _selectedIndex,
            backgroundColor: const Color(0xffBB9AB1),
            curve: Curves.linear,
            items: [
            SalomonBottomBarItem(icon: const Icon(Icons.home), selectedColor: _iconColors[0], title: const Text("Home")),
            SalomonBottomBarItem(icon: const Icon(Icons.favorite_outline_rounded), selectedColor: _iconColors[1], title: const Text("Favorite")),
            SalomonBottomBarItem(icon: const Icon(Icons.account_circle_rounded), selectedColor: _iconColors[2], title: const Text("Profile"))
          ], onTap: (index){
            _selectedIndex = index;
            setState(() {
            });
          },
          ),
          body: tabItems[_selectedIndex],
    );
  }
}
