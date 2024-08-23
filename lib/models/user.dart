import 'package:shopping_app/models/cart_item.dart';
import 'package:shopping_app/models/laptop.dart';

class User {
  String name;
  String password;
  String email;
  List<CartItem> cart = [];

  User({required this.name, required this.password, required this.email});
}
