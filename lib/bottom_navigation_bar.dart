import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:shopping_app/src/screens/home_screen.dart';
import 'package:shopping_app/src/screens/profile_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Map<String, String> userData;
  const CustomBottomNavigationBar({super.key, required this.userData});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;
  late final List<Widget> screens;

  @override
  void initState() {
    super.initState();
    // Initialize screens here
    screens = [
      HomeScreen(userData: widget.userData),
      ProfileScreen(userData: widget.userData),
    ];
  }

  void onTap(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTap,
          backgroundColor: const Color.fromARGB(255, 230, 222, 212),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                FluentIcons.home_12_regular,
                color: ColorsConstant.purple,
                size: 30,
              ),
              activeIcon: Icon(
                FluentIcons.home_12_filled,
                color: ColorsConstant.darkPurple,
                size: 35,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FluentIcons.person_12_regular,
                color: ColorsConstant.purple,
                size: 30,
              ),
              activeIcon: Icon(
                FluentIcons.person_12_filled,
                color: ColorsConstant.darkPurple,
                size: 35,
              ),
              label: "",
            ),
          ],
        ));
  }
}
