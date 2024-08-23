import 'package:flutter/material.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/models/user.dart';
import 'package:shopping_app/screens/main_screen.dart';
import 'package:shopping_app/screens/user_home_screen.dart';

class UserScreenNavigator extends StatefulWidget {
  final User? currentUser;
  const UserScreenNavigator({super.key, this.currentUser});

  @override
  State<UserScreenNavigator> createState() => _UserScreenNavigatorState();
}

class _UserScreenNavigatorState extends State<UserScreenNavigator> {
  late List<Widget> screens;
  late User? user;
  int currentScreen = 2;

  @override
  void initState() {
    super.initState();
    user = widget.currentUser;
    screens = [
      const Placeholder(),
      const Placeholder(),
      UserHomeScreen(user : user),
      const Placeholder(),
      const Placeholder()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: NavigationBar(
        height: 90,
        backgroundColor: Colors.white,
        indicatorColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: currentScreen,
          destinations: [
            NavigationDestination(
              icon: currentScreen == 0 ? Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(shape: BoxShape.circle, color: mainColor),
                child: Icon(Icons.person, color: bgColor, size: 35,)
              ) : Icon(Icons.person, color: mainColor),
              label: "Profile"),
            NavigationDestination(
              icon: currentScreen == 1 ? Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(shape: BoxShape.circle, color: mainColor),
                child: Icon(Icons.category, color: bgColor, size: 35,)
              ) : Icon(Icons.category, color: mainColor),
              label: "Categories"),
            NavigationDestination(
              icon: currentScreen == 2 ? Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(shape: BoxShape.circle, color: mainColor),
                child: Icon(Icons.home, color: bgColor, size: 35,)
              ) : Icon(Icons.home, color: mainColor),
              label: "Home"),
            NavigationDestination(
              icon: currentScreen == 3 ? Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(shape: BoxShape.circle, color: mainColor),
                child: Icon(Icons.shopping_cart, color: bgColor, size: 35,)
              ) : Icon(Icons.shopping_cart, color: mainColor),
              label: "Cart"),
            NavigationDestination(
              icon: currentScreen == 4 ? Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(shape: BoxShape.circle, color: mainColor),
                child: Icon(Icons.contact_support_rounded, color: bgColor, size: 35,)
              ) : Icon(Icons.contact_support_rounded, color: mainColor),
              label: "Contact"),
          ],
          onDestinationSelected: (index) {
            setState(() {
              currentScreen = index;
            });
          }),
    );
  }
}
