import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension Img on Image {
  static const logo = AssetImage('assets/appLogo.png');
  static const bg = AssetImage('assets/bg.jpg');
  // MARK: - Menu Items
  /* Coffee */
  static const almond = AssetImage('assets/items/almond.png');
  static const cappuccino = AssetImage('assets/items/cappuccino.png');
  static const espresso = AssetImage('assets/items/espresso.png');
  static const latte = AssetImage('assets/items/latte.png');
  static const pumpkin = AssetImage('assets/items/pumpkin.png');
  /* Beans */
  static const beans1 = AssetImage('assets/items/beans1.png');
  static const beans2 = AssetImage('assets/items/beans2.png');
  static const beans3 = AssetImage('assets/items/beans3.png');
  static const beans4 = AssetImage('assets/items/beans4.png');
  /* Desert */
  static const desert1 = AssetImage('assets/items/desert1.png');
  static const desert2 = AssetImage('assets/items/desert2.png');
}

// MARK: - Tab bar Icons
class AppSVG {
  static const home = SvgAssetLoader('assets/icons/house.svg');
  static const flame = SvgAssetLoader('assets/icons/flame.svg');
  static const heart = SvgAssetLoader('assets/icons/heart.svg');
  static const cart = SvgAssetLoader('assets/icons/cart.svg');
}
