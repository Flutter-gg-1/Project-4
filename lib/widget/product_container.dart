import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final String src;
  final String name;
  final double price;
  const ProductContainer(
      {super.key, required this.src, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: InkWell(
        onTap: () {},
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 100),
                child: Center(
                  child: Image.asset(src),
                ),
              ),
              Center(
                child: Text(name),
              ),
              Text("$price")
            ],
          ),
        ),
      ),
    );
  }
}
