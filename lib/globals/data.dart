import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/models/user.dart';

List<User> users = [];

List<Product> products = [
  Product.fromJson(
    {
      'name' : '3 Packs of Pringles',
      'price' : '15',
      'pic' : 'assets/food_pics/pringles.png',
      'offer' : '-25%',
      'section' : 'Food',
      'stars' : 4
    }
  ),
  Product.fromJson(
    {
      'name' : 'Almarai Cheese',
      'price' : '22',
      'pic' : 'assets/food_pics/cheese.png',
      'offer' : 'no',
      'section' : 'Food',
      'stars' : 2
    }
  ),
  Product.fromJson(
    {
      'name' : 'Oska water 330mlx40',
      'price' : '11',
      'pic' : 'assets/drinks_pics/water.png',
      'offer' : 'no',
      'section' : 'Drinks',
      'stars' : 5
    }
  ),
  Product.fromJson(
    {
      'name' : 'Moussy Lemon & Mint',
      'price' : '30',
      'pic' : 'assets/drinks_pics/moussy.png',
      'offer' : 'no',
      'section' : 'Drinks',
      'stars' : 5
    }
  ),
  Product.fromJson(
    {
      'name' : 'Chicken mixed parts',
      'price' : '14',
      'pic' : 'assets/food_pics/chicken.png',
      'offer' : 'no',
      'section' : 'Food',
      'stars' : 3
    }
  ),
  Product.fromJson(
    {
      'name' : 'Adidas Shirt',
      'price' : '99',
      'pic' : 'assets/tshirts_pics/adidas_shirt.png',
      'offer' : 'no',
      'section' : 'T-Shirts',
      'stars' : 5
    }
  ),
  Product.fromJson(
    {
      'name' : 'Green Shirt',
      'price' : '14',
      'pic' : 'assets/tshirts_pics/green_shirt.png',
      'offer' : 'no',
      'section' : 'T-Shirts',
      'stars' : 3
    }
  ),
  Product.fromJson(
    {
      'name' : '3 Colorful Shirts',
      'price' : '88',
      'pic' : 'assets/tshirts_pics/three_shirts.png',
      'offer' : '-40%',
      'section' : 'T-Shirts',
      'stars' : 4
    }
  ),
  Product.fromJson(
    {
      'name' : 'Iphone 14 Pro max',
      'price' : '3999',
      'pic' : 'assets/electronics_pics/iphone14.png',
      'offer' : 'no',
      'section' : 'Electronics',
      'stars' : 5
    }
  ),
  Product.fromJson(
    {
      'name' : 'Colorful Headphones',
      'price' : '250',
      'pic' : 'assets/electronics_pics/headphones.png',
      'offer' : 'no',
      'section' : 'Electronics',
      'stars' : 3
    }
  ),
  Product.fromJson(
    {
      'name' : 'Lenovo Laptop',
      'price' : '799',
      'pic' : 'assets/electronics_pics/laptop.png',
      'offer' : '-30%',
      'section' : 'Electronics',
      'stars' : 4
    }
  ),
  Product.fromJson(
    {
      'name' : 'Fakieh Eggs',
      'price' : '20',
      'pic' : 'assets/food_pics/eggs.png',
      'offer' : 'no',
      'section' : 'Food',
      'stars' : 2
    }
  ),
  Product.fromJson(
    {
      'name' : 'Hovis Toast Bread',
      'price' : '12',
      'pic' : 'assets/food_pics/bread.png',
      'offer' : 'no',
      'section' : 'Food',
      'stars' : 3
    }
  ),
  Product.fromJson(
    {
      'name' : 'Chocolate Milk',
      'price' : '99',
      'pic' : 'assets/drinks_pics/milk.png',
      'offer' : '-20%',
      'section' : 'Drinks',
      'stars' : 2
    }
  ),
  Product.fromJson(
    {
      'name' : 'Orange Juice',
      'price' : '10',
      'pic' : 'assets/drinks_pics/juice.png',
      'offer' : 'no',
      'section' : 'Drinks',
      'stars' : 3
    }
  ),
];