import 'package:flutter/material.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/models/user.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  final User user;
  const AddToCart({super.key, required this.product, required this.user});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("data"),
        Text("data"),
        Text("data"),
        Text("data"),
        Text("data"),
        Text("data"),
      ],
    );
  }
}