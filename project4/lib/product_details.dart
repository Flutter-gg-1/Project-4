import 'package:e_commerce_ui/custom_widgets/appColors.dart';
import 'package:e_commerce_ui/custom_widgets/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetailScreen extends StatefulWidget {
  final String productName;
  final int price;
  final String imageUrl;
  final String desc;

  const ProductDetailScreen({
    required this.productName,
    required this.price,
    required this.imageUrl,
    required this.desc,
  });

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _quantity = 1;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }
 void _addToCart() {
    final product = {
      'name': widget.productName,
      'price': widget.price,
      'image': widget.imageUrl,
      'quantity': _quantity,
      'desc': widget.desc,
        'id': DateTime.now().millisecondsSinceEpoch,
    };
    Cart().addToCart(product);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${widget.productName} added to cart!')),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.wafer,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_border),
          )
        ],
        // title: Text(widget.productName),
        backgroundColor: AppColors.wafer,
        iconTheme: IconThemeData(color: AppColors.spicyMix),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  widget.imageUrl,
                  height: 300,
                  width: double.infinity,
                  // fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.productName,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove, color: Colors.grey[700]),
                            onPressed: _decrementQuantity,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '$_quantity',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          IconButton(
                            icon: Icon(Icons.add, color: Colors.grey[700]),
                            onPressed: _incrementQuantity,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
           
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${widget.desc}',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins'),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${widget.price * _quantity}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[600],
                      ),
                    ),
                    GestureDetector(
                      onTap:                        _addToCart,

                      child: Container(
                        height: 33,
                        width: 107,
                        color: AppColors.spicyMix,
                        child: Center(
                          child: Text('Add to Cart'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16),
          
              // Add more details or buttons here if needed
            ],
          ),
        ),
      ),
    );
  }
}
