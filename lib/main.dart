import 'package:flutter/material.dart';
import 'package:shopping_app/screens/home_screen.dart';
import 'package:shopping_app/screens/item_screen.dart';
import 'package:shopping_app/screens/landing_screen.dart';
import 'package:shopping_app/screens/login_screen.dart';
import 'package:shopping_app/screens/navigation_screen.dart';
import 'package:shopping_app/screens/register_screen.dart';

import 'utils/item.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ItemScreen(item: Item(id: 1, name: 'Tshirt', description: 'description', rating: 4.5, reviews: 64, imagePath: 'assets/images/cap-grey.png', secondImagePath: 'assets/images/cap-oddgreen.png', category: 'Clothes', stock: 5, price: 65.00))
    );
  }
}
