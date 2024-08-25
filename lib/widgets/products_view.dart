import 'package:flutter/material.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/models/user.dart';
import 'package:shopping_app/widgets/product_card.dart';
import 'package:shopping_app/widgets/section_title.dart';

class ProductsView extends StatefulWidget {
  final List<Product> sectionProducts;
  final String section;
  final User user;
  const ProductsView({super.key, required this.sectionProducts, required this.section, required this.user});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20,),
        SectionTitle(title: widget.section),
        // start with a column of rows that represents how products will be viewed
        Column(
          // from 0 until half the products number
          children: List.generate((widget.sectionProducts.length/2).ceil(), (colIndex) {
            // create a row
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // 0 and 1 only
              children: List.generate(2, (rowIndex){
                // this equation is calculated based on the following pattern :
                // column 0 will have rows 0,1
                // column 1 will have rows 2,3
                // column 2 will have rows 4,5 .. etc
                // we notice if column is x the rows will be 2x and 2x+1
                rowIndex = rowIndex == 0 ? 2*colIndex : (2*colIndex)+1;
                if(rowIndex < widget.sectionProducts.length) {
                  return ProductCard(product: widget.sectionProducts[rowIndex], user: widget.user);
                }
                else {
                  return const SizedBox(height: 200,width: 150,);
                }
              }),
            );
          }),
        ),
        const SizedBox(height: 50,),
        ],
      );
  }
}