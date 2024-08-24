import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:shopping/src/cart_screen.dart';
import 'package:shopping/src/home_screen.dart';
import 'package:shopping/src/profile_screen.dart';
import 'package:shopping/src/special_offer_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List pages = const [SpecialOfferScreen(), HomeScreen(), CartScreen()];
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
                },
                child: const Text("Profile"))
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Theme.of(context).colorScheme.surface,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        key: _bottomNavigationKey,
        index: selectedIndex,
        onTap: (int index) => setState(() {
          selectedIndex = index;
        }),
        items: const [
          Icon(Icons.notifications_sharp),
          Icon(Icons.home_outlined),
          Icon(Icons.shopping_cart),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 512,
            ),
            child: PageTransitionSwitcher(
              transitionBuilder: (
                Widget child,
                Animation<double> primaryAnimation,
                Animation<double> secondaryAnimation,
              ) {
                return FadeThroughTransition(
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  child: child,
                );
              },
              child: pages.elementAt(selectedIndex),
            ),
          ),
        ),
      ),
    );
  }
}
