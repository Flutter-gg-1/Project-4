import 'package:espresso_yourself/model/menu_item.dart';

class Cart {
  List<(MenuItem, int)> items = [];

  void addItem({required MenuItem item, required int quantity}) =>
      items.add((item, quantity));
}
