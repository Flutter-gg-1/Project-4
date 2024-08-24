import 'package:flutter/material.dart';
import 'package:shopping_app/pages/cart_page.dart';
import 'package:shopping_app/pages/home_page.dart';
import 'package:shopping_app/pages/tracking_page.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> with TickerProviderStateMixin {
  List pages = [
    const HomePage(),
    const CartPage(),
    const ShippingTracker(),
  ];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xff5355ca),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "  "),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.local_shipping_outlined), label: ""),
        ],
        onTap: (int index) {
          pageIndex = index;
          setState(() {});
        },
      ),
      body: pages[pageIndex],
    );
  }
}
