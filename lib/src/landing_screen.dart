import 'package:flutter/material.dart';
import 'package:shopping/src/cart_screen.dart';
import 'package:shopping/src/home_screen.dart';
import 'package:shopping/src/special_offer_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  List pages = const [SpecialOfferScreen(), HomeScreen(), CartScreen()];
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) => setState(() {
          selectedIndex = index;
        }),
        indicatorColor: Colors.amber,
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.notifications_sharp),
            label: 'Spechial Offer',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 512,
            ),
            child: pages.elementAt(selectedIndex),
          ),
        ),
      ),
    );
  }
}
