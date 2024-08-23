
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final Widget myWidget;
  const ProductView({
    super.key,
    required this.myWidget,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (index) {
        return Center(
          child: myWidget,
        );
      }),
    );
  }
}
