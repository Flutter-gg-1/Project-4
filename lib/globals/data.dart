import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/models/user.dart';

List<User> users = [];

List<Product> products = [
  Product.fromJson(
    {
      'name' : '3 Packs of Pringles',
      'price' : '15',
      'pic' : 'assets/pringles.png',
      'offer' : '-25%',
      'section' : 'Food'
    }
  ),
  Product.fromJson(
    {
      'name' : 'Almarai Cheese',
      'price' : '22',
      'pic' : 'assets/cheese.png',
      'offer' : 'no',
      'section' : 'Food'
    }
  ),
  Product.fromJson(
    {
      'name' : 'Oska water 330mlx40',
      'price' : '11',
      'pic' : 'assets/water.png',
      'offer' : 'no',
      'section' : 'Food'
    }
  ),
  Product.fromJson(
    {
      'name' : 'Chicken mixed parts',
      'price' : '14',
      'pic' : 'assets/chicken.png',
      'offer' : 'no',
      'section' : 'Food'
    }
  ),
];