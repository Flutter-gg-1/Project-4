import 'package:espresso_yourself/model/menu_item.dart';

class Favorite {
  List<MenuItem> items = [];

  void addItem({required MenuItem item}) => items.add((item));
}
