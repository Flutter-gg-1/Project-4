import 'package:coffeshop_app/src/coffe_info_screen.dart';
import 'package:coffeshop_app/src/profile_screen.dart';
import 'package:coffeshop_app/widget/customdrawer.dart';
import 'package:coffeshop_app/widget/home/home_content.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> tabItems = const [
    HomeContent(),
    Profile(
      fromDrawer: false,
    ),
    CoffeInfo(
      fromDrawer: false,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: Colors.white,
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: const Icon(
              Iconsax.home_bold,
              color: Color.fromARGB(255, 214, 169, 100),
              size: 30,
            ),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              Iconsax.profile_2user_bold,
              color: Color.fromARGB(122, 18, 140, 156),
              size: 30,
            ),
            title: const Text('Profile'),
          ),
          FlashyTabBarItem(
            icon: const Icon(
              Iconsax.info_circle_bold,
              color: Colors.blueGrey,
              size: 30,
            ),
            title: const Text('about us'),
          ),
        ],
      ),
      body: SafeArea(child: tabItems[_selectedIndex]),
    );
  }
}
