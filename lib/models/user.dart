// class to represent shopex users
import 'package:shopping_app/models/product.dart';

class User {
  final String name;
  final String email;
  final String password;
  String pic ="assets/default_profile_picture";
  List<Product> cart = [];
  
  User({required this.name, required this.email, required this.password, required this.pic});
  
  factory User.fromJson(Map<String,dynamic> json) {
    return User(name: json['name'], email: json['email'], password: json['password'], pic: json['pic']);
  }

  Map<String,dynamic> toJson() {
    Map<String,dynamic> map = {};
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    map['pic'] = pic;
    map['cart'] = cart;
    return map;
  }
}