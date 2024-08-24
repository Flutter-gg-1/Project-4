import 'package:espresso_yourself/model/credit_card.dart';
import 'package:espresso_yourself/model/favorite.dart';
import 'package:flutter/material.dart';
import 'cart.dart';

class User {
  String name;
  AssetImage avatar;
  Cart cart = Cart();
  Favorite favorite = Favorite();
  List<CreditCard> cards = [];

  User({required this.name, required this.avatar});
}
