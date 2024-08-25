import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // List to hold items in the cart
  List<String> _cartItems = ['Item 1', 'Item 2', 'Item 3'];

  // Function to remove an item from the cart
  void _removeItem(int index) {
    // Show a confirmation dialog before removing the item
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Are you sure?'), // Title of the dialog
        content: Text('Do you want to remove the item from the cart?'), // Dialog content
        actions: <Widget>[
          TextButton(
            child: Text('No'),
            onPressed: () {
              Navigator.of(ctx).pop(); // Close the dialog if 'No' is pressed
            },
          ),
          TextButton(
            child: Text('Yes'),
            onPressed: () {
              setState(() {
                _cartItems.removeAt(index); // Remove the item if 'Yes' is pressed
              });
              Navigator.of(ctx).pop(); // Close the dialog
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Cart :',
          style: TextStyle(color: Colors.purple.shade700, fontSize: 24), // Title style
        ),
      ),
      body: ListView.builder(
        itemCount: _cartItems.length, // Number of items in the cart
        itemBuilder: (ctx, i) => Container(
          margin: EdgeInsets.all(10), // Margin around each item container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.purple.withOpacity(0.5), // Shadow color
                spreadRadius: 2, // Shadow spread radius
                blurRadius: 5, // Shadow blur radius
                offset: Offset(0, 1), // Shadow position
              ),
            ],
          ),
          child: Card(
            margin: EdgeInsets.zero, // Remove default margin to align with container
            child: ListTile(
              title: Text(_cartItems[i]), // Display the item name
              trailing: IconButton(
                icon: Icon(Icons.delete_rounded), // Delete icon
                color: Colors.purple, // Icon color
                onPressed: () => _removeItem(i), // Call _removeItem function on press
              ),
            ),
          ),
        ),
      ),
    );
  }
}
