import 'package:flutter/material.dart';
import 'package:shopping_shoes_app/screen/home_screen.dart';
import 'package:shopping_shoes_app/screen/my_cart_screen.dart';

import 'data/global_variabels.dart';

class ButtomNavWidget extends StatefulWidget {
  const ButtomNavWidget({super.key});

  @override
  State<ButtomNavWidget> createState() => _ButtomNavWidgetState();
}

class _ButtomNavWidgetState extends State<ButtomNavWidget>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  List<Widget> myWidget = [
    const HomeScreen(),
    const MyCartScreen(),
    const Text("Text Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedItemColor: Colors.blue,
            items: [
              const BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(
                  icon: Badge(
                    isLabelVisible: myCartCount > 0 ? true : false,
                    label: Text("$myCartCount"),
                    child: const Icon(Icons.shopping_cart_outlined),
                  ),
                  label: ""),
              const BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
            ]),
        body: myWidget[_selectedIndex],
      ),
    );
  }
}
