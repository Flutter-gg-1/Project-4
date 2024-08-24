import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/mock_data.dart';
import 'package:espresso_yourself/screens/cart/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../extensions/color_ext.dart';

class HomeDrawer extends StatelessWidget {
  HomeDrawer({super.key});

  final user = MockData().user;

  void _navigateToCart(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => CartScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: C.secondary,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: C.primary,
            ),
            child: ListTile(
              leading: CircleAvatar(foregroundImage: user.avatar),
              title: Text(user.name).styled(),
            ),
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.cart_fill, color: C.text),
            title: const Text('Go To Cart').styled(),
            onTap: () => _navigateToCart(context),
          ),
        ],
      ),
    );
  }
}
