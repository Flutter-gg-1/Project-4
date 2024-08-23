import 'package:flutter/material.dart';
import 'package:shopping_app/models/user.dart';
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
  int currentScreen = 0;

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
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "bye"),
            NavigationDestination(icon: Icon(Icons.home), label: "home"),
            NavigationDestination(icon: Icon(Icons.home), label: "home"),
            NavigationDestination(icon: Icon(Icons.home), label: "home"),
            NavigationDestination(icon: Icon(Icons.home), label: "home"),
          ],
          onDestinationSelected: (index) {
            setState(() {
              currentScreen = index;
            });
          }),
    );
  }
}
