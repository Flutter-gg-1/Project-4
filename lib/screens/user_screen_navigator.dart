import 'package:flutter/material.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/models/user.dart';
import 'package:shopping_app/screens/categories_screen.dart';
import 'package:shopping_app/screens/user_home_screen.dart';
import 'package:shopping_app/widgets/app_drawer.dart';

class UserScreenNavigator extends StatefulWidget {
  final User currentUser;
  const UserScreenNavigator({super.key, required this.currentUser});

  @override
  State<UserScreenNavigator> createState() => _UserScreenNavigatorState();
}

class _UserScreenNavigatorState extends State<UserScreenNavigator> {
  late List<Widget> screens = [
      CategoriesScreen(user: widget.currentUser),
      UserHomeScreen(user : widget.currentUser),
      const Placeholder(),
  ];
  List<String> screensLabels = ["Categories", "Home", "Cart"];
  List<IconData> screensIcons = [Icons.category, Icons.home, Icons.shopping_cart]; 
  int currentScreen = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Image.asset('assets/logo.png', width: 120),
        ),
      ),
      drawer: AppDrawer(user: widget.currentUser),
      body: screens[currentScreen],
      bottomNavigationBar: NavigationBar(
        height: 90,
        backgroundColor: Colors.white,
        indicatorColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: currentScreen,
        destinations: List.generate(screensLabels.length, (index) {
          return NavigationDestination(
            icon:
            // if selected, put circle as bg
            currentScreen == index ? Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(shape: BoxShape.circle, color: mainColor),
              child: Icon(screensIcons[index], color: bgColor, size: 35),
            )
            // else, just put icon
            : Icon(screensIcons[index], color: mainColor),
            label: screensLabels[index]
          );
        }),
        onDestinationSelected: (index) {
          setState(() {
            currentScreen = index;
          });
        }
      ),
    );
  }
}