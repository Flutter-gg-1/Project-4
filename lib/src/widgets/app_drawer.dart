import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/categories_screen.dart';
import '../screens/cart_screen.dart';
import '../screens/profile_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Hello Friend!'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Shop'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => HomeScreen()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Categories'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => CategoriesScreen()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => CartScreen()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
