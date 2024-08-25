import 'package:flutter/material.dart';
import 'package:project_04/features/home/presentation/home_screen.dart';

class CartScreen extends StatelessWidget {
  final List<CartItem> cartItems;

  const CartScreen({super.key, required this.cartItems});

  double get totalAmount {
    return cartItems.fold(0.0, (sum, item) => sum + (double.parse(item.plantPrice.substring(1)) * item.quantity));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final cartItem = cartItems[index];
          return ListTile(
            leading: Image.asset(cartItem.imagePath, width: 50, height: 50, fit: BoxFit.cover),
            title: Text(cartItem.plantName),
            subtitle: Text('${cartItem.quantity} x ${cartItem.plantPrice}'),
            trailing: Text('\$${(double.parse(cartItem.plantPrice.substring(1)) * cartItem.quantity).toStringAsFixed(2)}'),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Total: \$${totalAmount.toStringAsFixed(2)}',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
