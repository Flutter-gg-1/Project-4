import 'package:flutter/material.dart';
import 'package:pro4/models/product_model.dart';
import 'package:pro4/widget/stack_product_item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({
    super.key,
    required this.proLis,
  });

  final List<ProductModel> proLis;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90, left: 10, right: 10),
      child: GridView.builder(
        clipBehavior: Clip.none,
        itemCount: proLis.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    
            // how many cloum in one row
            crossAxisCount: 2,
            childAspectRatio: 1.3,
            // the x
            crossAxisSpacing: 10,
            // the y
            mainAxisSpacing: 40),
        itemBuilder: (context, index) {
          return StackProductItem(
            productModel: proLis[index],
          );
        },
      ),
    );
  }
}


