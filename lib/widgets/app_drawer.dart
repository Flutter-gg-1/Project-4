// lib/widgets/app_drawer.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/cart_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          // AppBar at the top of the Drawer
          AppBar(
            backgroundColor: Colors.purple.shade700, // Set the background color
            title: Text(
              'Hello Friend!',
              style: TextStyle(
                color: Colors.white, // Set the text color
                fontSize: 20.0, // Set the font size
                fontWeight: FontWeight.bold, // Set the font weight
              ),
            ),
          ),
          Divider(), // Divider to separate the AppBar from the list items

          // ListTile for the Shop section
          ListTile(
            leading: Icon(
              FontAwesomeIcons.shop, // FontAwesome icon for the Shop
              size: 16,
              color: Colors.purple.shade700, // Set the icon color
            ),
            title: Text('Shop'), // Label for the list item
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => HomeScreen()), // Navigate to HomeScreen
              );
            },
          ),
          Divider(), // Divider to separate list items

          // ListTile for the Cart section
          ListTile(
            leading: Icon(
              Icons.shopping_cart, // Icon for the Cart
              size: 18,
              color: Colors.purple.shade700, // Set the icon color
            ),
            title: Text('Cart'), // Label for the list item
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => CartScreen()), // Navigate to CartScreen
              );
            },
          ),
          Divider(), // Divider to separate list items

          // ListTile for the Profile section
          ListTile(
            leading: Icon(
              Icons.person, // Icon for the Profile
              size: 18,
              color: Colors.purple.shade700, // Set the icon color
            ),
            title: Text('Profile'), // Label for the list item
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => ProfileScreen()), // Navigate to ProfileScreen
              );
            },
          ),
        ],
      ),
    );
  }
}
