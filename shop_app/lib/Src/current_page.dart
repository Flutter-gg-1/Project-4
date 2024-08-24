import 'package:flutter/material.dart';
import 'package:shop_app/Src/Screens/faveorite_screen.dart';
import 'package:shop_app/Src/Screens/home_screen.dart';
import 'package:shop_app/Src/Screens/cart_screen.dart';
import 'package:shop_app/Src/Screens/profile_screen.dart';

class CurrentPage extends StatefulWidget {
  const CurrentPage({super.key});

  @override
  State<CurrentPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CurrentPage> {
  int currentNavIndex = 0;
  List pages = [
    const HomeScreen(),
    const FaveoriteScreen(),
    const CartScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff9baa99),
        unselectedItemColor: const Color.fromARGB(255, 216, 210, 210),
        currentIndex: currentNavIndex,
        onTap: (index) {
          setState(() {
            currentNavIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded), label: "cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "account")
        ],
      ),
    );
  }
}
