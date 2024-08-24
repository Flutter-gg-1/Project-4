import 'package:e_commerce_ui/custom_widgets/product_container.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  final String category;

  const ProductGridView({required this.category});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'name': 'Room Sofa',
        'price': 650,
        'image': 'assets/images/sofa/sofa1.png',
        'desc': 'A comfortable sofa perfect for any living room setting.'
      },
      {
        'name': 'Classic Sofa',
        'price': 700,
        'image': 'assets/images/sofa/sofa2.png',
        'desc': 'A timeless design that adds elegance to your space.'
      },
      {
        'name': 'Modern Sofa',
        'price': 750,
        'image': 'assets/images/sofa/sofa3.png',
        'desc': 'A sleek and stylish sofa with a contemporary look.'
      },
      {
        'name': 'Luxury Sofa',
        'price': 800,
        'image': 'assets/images/sofa/sofa4.png',
        'desc': 'An ultra-luxurious sofa crafted with premium materials.'
      },

      {
        'name': 'Home Candle',
        'price': 1200,
        'image': 'assets/images/candle/candle1.png',
        'desc': 'A soothing candle that creates a warm and inviting atmosphere.'
      },
      {
        'name': 'Scented Candle',
        'price': 1300,
        'image': 'assets/images/candle/candle2.png',
        'desc':
            'A scented candle with a refreshing fragrance that enhances any room.'
      },
      {
        'name': 'Decorative Candle',
        'price': 1400,
        'image': 'assets/images/candle/candle3.png',
        'desc':
            'An elegant decorative candle that adds a touch of style to your decor.'
      },
      {
        'name': 'Luxury Candle',
        'price': 1500,
        'image': 'assets/images/candle/candle4.png',
        'desc':
            'A premium candle crafted for a luxurious and calming experience.'
      },

      {
        'name': 'Table',
        'price': 1200,
        'image': 'assets/images/table/table1.png',
        'desc': 'A versatile cabinet that provides ample storage space.'
      },
      {
        'name': 'Wooden Table',
        'price': 1400,
        'image': 'assets/images/table/table2.png',
        'desc': 'A beautifully crafted wooden cabinet with a classic design.'
      },
      {
        'name': 'Modern Table',
        'price': 1600,
        'image': 'assets/images/table/table3.png',
        'desc':
            'A sleek modern cabinet that adds a contemporary touch to any room.'
      },
      {
        'name': 'Luxury Table',
        'price': 1800,
        'image': 'assets/images/table/table4.png',
        'desc': 'An elegant luxury cabinet made from high-quality materials.'
      },

      {
        'name': 'Home Lamp',
        'price': 1200,
        'image': 'assets/images/lamp/lamp1.png',
        'desc': 'A stylish table lamp that enhances your room’s ambiance.'
      },
      {
        'name': 'Desk Lamp',
        'price': 1100,
        'image': 'assets/images/lamp/lamp2.png',
        'desc': 'A practical desk lamp with adjustable brightness.'
      },
      {
        'name': 'Floor Lamp',
        'price': 1300,
        'image': 'assets/images/lamp/lamp3.png',
        'desc': 'A modern floor lamp perfect for any corner of the room.'
      },
      {
        'name': 'Bedside Lamp',
        'price': 1000,
        'image': 'assets/images/lamp/lamp4.png',
        'desc': 'A compact bedside lamp for a cozy evening light.'
      },
 
    ];

   
    final filteredProducts = category == 'All'
        ? products
        : products.where((product) {
            final name = product['name'] as String?;
            return name != null && name.contains(category);
          }).toList();

    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: filteredProducts.length,
      itemBuilder: (context, index) {
        final product = filteredProducts[index];
        return ProductCard(
          productName: product['name'] as String,
          price: product['price'] as int,
          imageUrl: product['image'] as String,
          desc: product['desc'] as String,
        );
      },
    );
  }
}
