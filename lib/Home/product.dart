import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Product extends StatelessWidget {
  Product({super.key, required this.imag});
  String imag;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(8, 3),
          ),
        ],
      ),
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset(
          imag,
        ),
      ),
    );
  }
}
