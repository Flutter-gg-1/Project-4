import 'package:espresso_yourself/model/menu_category.dart';
import 'package:flutter/material.dart';

import '../extensions/image_ext.dart';

class MenuItem {
  String title;
  String description;
  double price;
  AssetImage img;
  int categoryId;
  double rating;

  MenuItem({
    required this.title,
    required this.description,
    required this.price,
    required this.img,
    required this.categoryId,
    this.rating = 5,
  });

  static List<MenuItem> items = [
    // Coffee
    MenuItem(
      title: 'Espresso',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      price: 10,
      img: Img.espresso,
      categoryId: 1,
      rating: 4.7,
    ),
    MenuItem(
      title: 'Cappuccino',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 20,
      img: Img.cappuccino,
      categoryId: 1,
    ),
    MenuItem(
      title: 'Latte',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 24,
      img: Img.latte,
      categoryId: 1,
    ),
    MenuItem(
      title: 'Almond Latte',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 15,
      img: Img.almond,
      categoryId: 1,
    ),
    MenuItem(
      title: 'Pumpkin spice',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 26,
      img: Img.pumpkin,
      categoryId: 1,
    ),
    // Beans
    MenuItem(
      title: 'Dark Roast',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 21,
      img: Img.beans1,
      categoryId: 2,
    ),
    MenuItem(
      title: 'Dark Roast',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 15,
      img: Img.beans2,
      categoryId: 2,
    ),
    MenuItem(
      title: 'Dark Roast',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 17,
      img: Img.beans3,
      categoryId: 2,
    ),
    MenuItem(
      title: 'Dark Roast',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 24,
      img: Img.beans4,
      categoryId: 2,
    ),
    // Desert
    MenuItem(
      title: 'Brownie',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 12,
      img: Img.desert1,
      categoryId: 3,
    ),
    MenuItem(
      title: 'Cheese Cake',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      price: 9,
      img: Img.desert2,
      categoryId: 3,
    ),
  ];
}
