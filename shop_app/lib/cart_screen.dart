import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 231, 231),
        centerTitle: true,
        title: const Text("Cart",
            style: TextStyle(
              color: Color(0xff5d665b),
              fontSize: 20,
              fontFamily: "DMSherifText",
            )),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Image.asset("assets/empty_cart.png", scale: 2),
      ),
    );
  }
}
