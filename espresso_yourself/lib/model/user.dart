import 'package:espresso_yourself/model/favorite.dart';
import 'package:flutter/material.dart';
import '../extensions/image_ext.dart';
import 'cart.dart';

class User {
  String name;
  AssetImage avatar;
  Cart cart = Cart();
  Favorite favorite = Favorite();

  User({required this.name, required this.avatar});
}
