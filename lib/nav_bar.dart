import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project4/homepage.dart';
import 'package:project4/login.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    Login(),
    Homepage(),
    // Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavBar(selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({super.key, required this.selectedIndex, required this.onItemTapped});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor:  const Color.fromARGB(255, 133, 165, 157),
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svg/home.svg',
            color: selectedIndex == 0 ? const Color.fromARGB(255, 246, 189, 96) :const Color.fromARGB(255, 255, 255, 255),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svg/search.svg',
            color: selectedIndex == 1 ? const Color.fromARGB(255, 246, 189, 96) :const Color.fromARGB(255, 255, 255, 255),
          ),
          label: 'Discover',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svg/cart.svg',
            color: selectedIndex == 2 ? const Color.fromARGB(255, 246, 189, 96) :const Color.fromARGB(255, 255, 255, 255),
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svg/profile.svg',
            color: selectedIndex == 3 ? const Color.fromARGB(255, 246, 189, 96) :const Color.fromARGB(255, 255, 255, 255),
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor:  Color.fromARGB(255, 246, 189, 96),
      unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
      onTap: onItemTapped,
    );
  }
}