import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_project/src/cart_screen.dart';
import 'package:shopping_app_project/src/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Widget> pages = const [
    HomeScreen(),
    CartScreen(),
  ];

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      backgroundColor: const Color.fromARGB(146, 255, 255, 255),
      bottomNavigationBar: FloatingNavbar(
        padding: const EdgeInsets.only(bottom: 0, right: 0, left: 0, top: 0),
        margin: const EdgeInsets.only(bottom: 5),
        backgroundColor: Colors.transparent,
        onTap: (int val) => setState(() => pageIndex = val),
        currentIndex: pageIndex,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.shopping_cart_rounded, title: 'Cart'),
        ],
      ),
      body: Center(child: pages[pageIndex]),
    );
  }
}
