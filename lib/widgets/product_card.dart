import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 220,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: secondaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Badge(
            alignment: Alignment.topLeft,
            isLabelVisible: product.offer != 'no' ? true : false,
            label: Text(product.offer),
            child: Image.asset(product.pic, width: 150, height: 150,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(product.name, style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 13
              ),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("${product.price}SR", style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
              ),),
            ],
          ),
        ],
      ),
    );
  }
}