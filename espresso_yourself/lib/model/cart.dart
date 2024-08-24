import 'dart:math';
import 'package:espresso_yourself/model/menu_item.dart';

class CartItem {
  int id = Random().nextInt(300);
  MenuItem item;
  int quantity;

  CartItem({required this.item, required this.quantity});
}
