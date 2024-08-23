import 'package:flutter/material.dart';
import 'package:shopping/model/product.dart';
import 'package:shopping/widget/product_container.dart';

class ProductView extends StatelessWidget {
  final List<Product> products;
  const ProductView({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Center(
            child: ProductContainer(
              src: products[index].src,
              name: products[index].name,
              price: products[index].price,
            ),
          );
        });
  }
}
