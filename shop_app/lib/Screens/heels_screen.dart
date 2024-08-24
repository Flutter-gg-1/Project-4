import 'package:flutter/material.dart';
import 'package:shop_app/customWidgets/order_widget.dart';

class HeelsScreen extends StatelessWidget {
  const HeelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 231, 231),
        centerTitle: true,
        title: const Text("Sneakrs",
            style: TextStyle(
              color: Color(0xff5d665b),
              fontSize: 20,
              fontFamily: "DMSherifText",
            )),
      ),
      body: const Column(
        children: [
          SizedBox(height: 20),
          const OrderWidget(
              name: "Black heels",
              price: "800",
              imgUrl: "assets/highHeel1.png"),
        ],
      ),
    );
  }
}
