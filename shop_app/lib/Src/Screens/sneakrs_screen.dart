import 'package:flutter/material.dart';
import 'package:shop_app/Src/customWidgets/order_widget.dart';
import 'package:shop_app/Src/Screens/product_screen.dart';

class SneakrsScreen extends StatelessWidget {
  const SneakrsScreen({super.key});

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
      body: Column(
        children: [
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const ProductScreen();
              }));
            },
            child: const OrderWidget(
                name: "Nike green",
                price: "760 SAR",
                imgUrl: "assets/shoes1.png"),
          ),
          const SizedBox(height: 20),
          const OrderWidget(
              name: "Nike purple",
              price: "450 SAR",
              imgUrl: "assets/shoes2.png"),
          const SizedBox(height: 20),
          const OrderWidget(
              name: "Nike red", price: "300 SAR", imgUrl: "assets/shoes3.png")
        ],
      ),
    );
  }
}
