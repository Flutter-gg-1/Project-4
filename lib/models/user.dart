// class to represent shopex users
import 'package:shopping_app/models/product.dart';

class User {
  final String name;
  final String email;
  final String password;
  final String pic;
  final List<Product>? cart;
  
  User({required this.name, required this.email, required this.password, required this.pic, this.cart});
  
  factory User.fromJson(Map<String,dynamic> json) {
    return User(name: json['name'], email: json['email'], password: json['password'], pic: json['pic'], cart: json['cart']);
  }

  Map<String,dynamic> toJson() {
    Map<String,dynamic> map = {};
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    map['pic'] = pic;
    if(cart!=null) {
      map['cart'] = cart;
    }
    return map;
  }
}