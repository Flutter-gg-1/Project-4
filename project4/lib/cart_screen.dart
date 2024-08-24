import 'package:e_commerce_ui/custom_widgets/appColors.dart';
import 'package:flutter/material.dart';
import 'custom_widgets/cart.dart'; 

class CartPage extends StatefulWidget {
  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  late Cart cart;

  @override
  void initState() {
    super.initState();
    cart = Cart();
  }

  @override
  Widget build(BuildContext context) {
    final cartItems = cart.items;

    return Scaffold(
      backgroundColor: AppColors.ecruWhite,
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: AppColors.ecruWhite,automaticallyImplyLeading: false,

      ),
      body: cartItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 100,
                    color: Colors.grey[400],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Nothing in cart',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.wafer,
                        borderRadius: BorderRadius.circular(16)),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8.0),
                      leading: Image.asset(
                        item['image'],
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      title: Text(item['name']),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price: \$${item['price']}'),
                          Text('Quantity: ${item['quantity']}'),
                          Text(item['desc']),
                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            cart.removeItem(item['id']);
                          });
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
