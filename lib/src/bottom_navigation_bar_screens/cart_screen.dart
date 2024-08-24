import 'package:flutter/material.dart';

import '../custom_paint/home_screen_background.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Builder(
        builder: (BuildContext context) {
          return Stack(
            children: [
              CustomPaint(
                size: Size(MediaQuery.of(context).size.width, 180),
                painter: RPSCustomPainter2(),
              ),
               Column(
                children: [
                  const SizedBox(height: 30),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 190, top: 50),
                            child: Text(
                              "Cart",
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 190, top: 330),
                            child: Icon(Icons.shopping_cart_outlined, size: 50,)
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150,),
                            child: Text(
                              "Empty cart",
                              style: TextStyle(fontSize: 24, color: Colors.black.withOpacity(0.5)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}