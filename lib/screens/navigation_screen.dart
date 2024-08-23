import 'package:flutter/material.dart';
import 'package:shopping_app/screens/favorite_screen.dart';
import 'package:shopping_app/screens/profile_screen.dart';
import 'package:shopping_app/screens/search_screen.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'home_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<IconData> iconsList = [
    Icons.home,
    Icons.favorite,
    Icons.search,
    Icons.person
  ];
  final List<Widget> pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
 backgroundColor: Colors.yellow[50],          title: Text(
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
                Positioned(
                  left: 7,
                  top: -7,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.red),
                    child: const Center(
                        child: Text(
                      '2',
                      style: TextStyle(
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
        drawer: const Drawer(
            // logo
            // about
            // Dark Mode
            // contact
            // logout
            ),
        body: pages[pageIndex],
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: 4,
            tabBuilder: (int index, bool isActive) {
              return Icon(
                iconsList[index],
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
                LinearGradient(transform: GradientRotation(0.7), colors: [
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
            })

        // NavigationBar(
        //   selectedIndex: pageIndex,
        //   destinations: [
        //     const NavigationDestination(icon: Icon(Icons.home), label: ''),
        //     const NavigationDestination(icon: Icon(Icons.favorite), label: ''),
        //     const NavigationDestination(icon: Icon(Icons.search), label: ''),
        //     const NavigationDestination(icon: Icon(Icons.person), label: ''),
        //   ],
        //   onDestinationSelected: (index) {
        //     if (pageIndex != index) {
        //       setState(() {
        //         pageIndex = index;
        //       });
        //     }
        //   },
        // )

        );
  }
}
