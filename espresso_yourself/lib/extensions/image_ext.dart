import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension Img on Image {
  static const logo = AssetImage('assets/appLogo.png');
  static const bg = AssetImage('assets/bg.jpg');
  // Items
  static const almond = AssetImage('assets/almond.jpg');
  static const cappuccino = AssetImage('assets/cappuccino.jpg');
  static const espresso = AssetImage('assets/espresso.jpg');
  static const latte = AssetImage('assets/latte.jpg');
  static const pumpkin = AssetImage('assets/pumpkin.jpg');
}

class AppSVG {
  static const home = SvgAssetLoader('assets/icons/house.svg');
  static const flame = SvgAssetLoader('assets/icons/flame.svg');
  static const heart = SvgAssetLoader('assets/icons/heart.svg');
  static const cart = SvgAssetLoader('assets/icons/cart.svg');
}
