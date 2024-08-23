import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 186, 237, 233),
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
        bottomNavigationBar: NavigationBar(
          selectedIndex: pageIndex,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: ''),
            NavigationDestination(icon: Icon(Icons.favorite), label: ''),
            NavigationDestination(icon: Icon(Icons.search), label: ''),
            NavigationDestination(icon: Icon(Icons.person), label: ''),
          ],
          onDestinationSelected: (index) {
            if (pageIndex != index) {
              setState(() {
                pageIndex = index;
              });
            }
          },
        ));
  }
}
