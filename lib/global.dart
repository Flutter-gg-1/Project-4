import 'package:shopping/model/product.dart';
import 'package:shopping/model/user.dart';

final List<Product> electronics = [
  Product(
    name: 'phone',
    src: 'assets/images/phone.jpg',
    price: 299.99,
    description: 'High-tech gadget',
  ),
  Product(
    name: 'laptop',
    src: 'assets/images/laptop.jpg',
    price: 299.99,
    description: 'Powerful computing tool',
  ),
  Product(
    name: 'tablet',
    src: 'assets/images/tablet.jpg',
    price: 299.99,
    description: 'Portable digital device',
  ),
];

final List<Product> schools = [
  Product(
    name: 'notebook',
    src: 'assets/images/notebook.jpg',
    price: 3.99,
    description: '100 pages',
  ),
  Product(
    name: 'backpack',
    src: 'assets/images/backpack.jpg',
    price: 29.99,
    description: 'big',
  ),
];

final List<Product> cloths = [
  Product(
    name: 'jeans',
    src: 'assets/images/jeans.jpg',
    price: 19.99,
    description: 'tide',
  ),
  Product(
    name: 'shirt',
    src: 'assets/images/shirt.jpg',
    price: 19.99,
    description: 'big',
  ),
  Product(
    name: 'shoes',
    src: 'assets/images/shoes.jpg',
    price: 19.99,
    description: '',
  ),
];

List<Product> cart = [];

User user = User(userName: '', password: '');
