import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

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
                constraints: const BoxConstraints(maxHeight: 150),
                child: const Placeholder(
                  child: Center(
                    child: Text("image"),
                  ),
                ),
              ),
              const Center(
                child: Text("product name"),
              ),
              const Text("price")
            ],
          ),
        ),
      ),
    );
  }
}
