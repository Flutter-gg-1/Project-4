import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_4_test/widgets/product.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../widgets/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Variable to keep track of the selected bottom navigation bar item
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background gradient for the home screen
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 239, 157, 254),
                  const Color.fromARGB(255, 65, 15, 97),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          
          // Title text positioned at the top center of the screen
          Positioned(
              top: 50,
              left: 110,
              child: Text('Lavender Store',
                  style: GoogleFonts.modernAntiqua(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.purple.shade900))),
       
          // List of products displayed in a vertical scrollable ListView
          Positioned(
            top: 55,
            child: SizedBox(
              height: 800, // Set a fixed height for the ListView
              width: MediaQuery.of(context).size.width, // Set the width to match the screen width
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  Product(
                      name: 'lavender',
                      image: 'assets/4.jpeg',
                      description: 'Product 1',
                      price: 29.99),
                  SizedBox(width: 10), // Spacing between the cards
                  Product(
                      name: 'lavender',
                      image: 'assets/3.jpeg',
                      description: 'Product 2',
                      price: 39.99),
                  SizedBox(width: 10),
                  Product(
                      name: 'lavender',
                      image: 'assets/2.jpeg',
                      description: 'Product 3',
                      price: 49.99),
                  Product(
                      name: 'lavender',
                      image: 'assets/1.jpeg',
                      description: 'Product 3',
                      price: 49.99),
                  SizedBox(
                    height: 300, // Bottom padding to avoid content being hidden behind the bottom navigation bar
                  ),
                ],
              ),
            ),
          ),

          // Menu icon to open the drawer
          Positioned(
            top: 40, // Position the icon as per your requirement
            left: 16, // Position the icon as per your requirement
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
          ),

          // Custom Bottom Navigation Bar with blur effect and rounded corners
          Positioned(
            bottom: 18,
            left: 18,
            right: 18,
            height: 86,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                    bottomLeft: Radius.circular(52),
                    bottomRight: Radius.circular(52)),
                color: theme.scaffoldBackgroundColor.withOpacity(0.1),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                    bottomLeft: Radius.circular(52),
                    bottomRight: Radius.circular(52)),
                child: ClipPath(
                  clipper: MyCustomClipper(),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 8, sigmaX: 8),
                    child: Container(),
                  ),
                ),
              ),
            ),
          ),

          // Bottom Navigation bar items with tap animation
          Positioned(
            bottom: 18,
            left: 22,
            right: 22,
            height: 86,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                _buildBNBItem(Icons.home_outlined, 0),
                _buildBNBItem(Icons.apps, 1),
                _buildBNBItem(Icons.notifications_outlined, 2),
                _buildBNBItem(Icons.settings_outlined, 3),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build each bottom navigation bar item with tap animation
  Widget _buildBNBItem(IconData icon, index) {
    return ZoomTapAnimation(
      onTap: () {
        setState(() {
          selectedItem = index; // Update selected item when tapped
        });
      },
      child: Icon(
        icon,
        color: selectedItem == index ? Colors.purple.shade800 : Colors.white,
        size: 30,
      ),
    );
  }
}

// Custom clipper for creating the curved shape on the bottom navigation bar
class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(64, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true; // Return true to reclip if the clipper changes
  }
}
