import 'package:flutter/material.dart';
import 'package:shopping_app/screens/favorite_screen.dart';
import 'package:shopping_app/screens/landing_screen.dart';
import 'package:shopping_app/screens/profile_screen.dart';
import 'package:shopping_app/screens/explore_screen.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:shopping_app/widgets/alert_message.dart';
import '../models/user.dart';
import '../screens/home_screen.dart';
import 'data/user_data.dart';
import 'package:icons_plus/icons_plus.dart';



class NavigationHelper extends StatefulWidget {
  final User user;
  final int index;
  const NavigationHelper({super.key, required this.user, this.index = 0});

  @override
  State<NavigationHelper> createState() => _NavigationHelperState();
}

class _NavigationHelperState extends State<NavigationHelper> {
  final List<IconData> iconsList = [
    AntDesign.home_outline,
    AntDesign.heart_outline,
    AntDesign.compass_outline,
    Icons.person_2_outlined,
  ];
  final List<IconData> iconListFilled = [
    AntDesign.home_fill,
    AntDesign.heart_fill,
    AntDesign.compass_fill,
    Icons.person_2_sharp,
  ];

  final List<Widget> pages = [];
  int pageIndex = 0;
  final user = currentUser;

  @override
  void initState() {
    super.initState();
    pageIndex = widget.index;
    pages.addAll([
      const HomeScreen(),
      const FavoriteScreen(),
      const ExploreScreen(),
      const ProfileScreen(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[50],
          title: Text(
            'Jeem',
            style: TextStyle(
                fontSize: 30, color: Colors.blue[400], fontFamily: 'Matemasie'),
          ),
          centerTitle: true,
          actions: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                const Icon(Icons.shopping_cart),
                if (currentUser!.cartItems.isNotEmpty)
                  Positioned(
                    left: 7,
                    top: -7,
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red),
                      child: Center(
                          child: Text(
                        '${currentUser!.cartItems.length}',
                        style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                  )
              ],
            ),
            const SizedBox(
              width: 30,
            )
          ],
        ),
        drawer: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.1,
              bottom: MediaQuery.of(context).size.height * 0.067),
          child: Drawer(
            backgroundColor: Colors.yellow[100],
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Jeem',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue[400],
                      fontFamily: 'Matemasie'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/images/shopping.png'),
                TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertMessage(section: 'about');
                          });
                    },
                    child: const Text(
                      'About',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertMessage(section: 'contact');
                          });
                    },
                    child: const Text(
                      'Contact',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LandingScreen()),
                          (route) => false);
                    },
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )),
              ],  
            ),
          ),
        ),
        body: pages[pageIndex],
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: 4,
            tabBuilder: (int index, bool isActive) {
              return Icon(
                isActive ?  iconListFilled[index] : iconsList[index] ,
                size: isActive ? 30 : 24,
                color:
                    isActive ? Colors.blue[900] : Colors.black.withOpacity(0.5),
              );
            },
            activeIndex: pageIndex,
            gapLocation: GapLocation.none,
            notchSmoothness: NotchSmoothness.verySmoothEdge,
            borderColor: Colors.black.withOpacity(0.2),
            borderWidth: 10,
            backgroundGradient:
                LinearGradient(transform: const GradientRotation(0.7), colors: [
              Colors.yellow.withOpacity(0.5),
              Colors.grey.withOpacity(0.2),
              Colors.yellow.withOpacity(0.5),
              Colors.grey.withOpacity(0.2),
              Colors.yellow.withOpacity(0.5)
            ]),
            onTap: (index) {
              if (pageIndex != index) {
                setState(() {
                  pageIndex = index;
                });
              }
            }));
  }
}
