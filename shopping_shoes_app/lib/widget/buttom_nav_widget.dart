import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:shopping_shoes_app/screen/home_screen.dart';
import 'package:shopping_shoes_app/screen/my_cart_screen.dart';

class ButtomNavWidget extends StatefulWidget {
  const ButtomNavWidget({super.key});

  @override
  State<ButtomNavWidget> createState() => _ButtomNavWidgetState();
}

class _ButtomNavWidgetState extends State<ButtomNavWidget> {
  int _selectedIndex = 0;
  List<Widget> myWidget = [
    const HomeScreen(),
    const MyCartScreen(),
  ];

  List<TabItem> items = [
    const TabItem(
        title: "",
        icon: Icon(
          Icons.home,
        )),
    const TabItem(
        title: "",
        icon: Icon(
          Icons.shopping_cart_outlined,
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ConvexAppBar(
          items: items,
          height: 50,
          initialActiveIndex: _selectedIndex,
          backgroundColor: const Color(0xff4c77cf).withOpacity(0.9),
          onTap: (index) {
            _selectedIndex = index;
            setState(() {});
          },
        ),
        body: myWidget[_selectedIndex],
      ),
    );
  }
}
