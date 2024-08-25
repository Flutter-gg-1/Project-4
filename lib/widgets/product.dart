import 'package:flutter/material.dart';
import 'package:project_4_test/screens/cart_screen.dart';

class Product extends StatelessWidget {
  final String image; // Image path for the product
  final String name; // Name of the product
  final String description; // Description of the product
  final double price; // Price of the product

  const Product({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to another screen (currently navigating to CartScreen)
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CartScreen(), // Replace with your desired destination screen
          ),
        );
      },
      child: Container(
        width: 150, // Width of the product container
        height: 250, // Height of the product container
        margin: const EdgeInsets.all(14.0), // Margin around the container
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white.withOpacity(0.7), // Border color with transparency
            width: 2, // Border width
          ), 
          borderRadius: BorderRadius.circular(12), // Rounded corners of the container
          image: DecorationImage(
            image: AssetImage(image), // Display the product image
            fit: BoxFit.cover, // Cover the entire container with the image
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start of the column
          children: [
            Spacer(), // Pushes the rest of the content to the bottom
            Container(
              padding: const EdgeInsets.all(11.0), // Padding inside the text container
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6), // Background color with transparency
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(12), // Rounded corners only at the bottom
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                children: [
                  Text(
                    name, // Product name
                    style: const TextStyle(
                      fontSize: 16, // Font size for product name
                      fontWeight: FontWeight.bold, // Bold font
                      color: Colors.white, // Text color
                    ),
                    maxLines: 1, // Maximum number of lines for the name
                    overflow: TextOverflow.ellipsis, // Adds "..." if the text is too long
                  ),
                  const SizedBox(height: 4), // Space between name and description
                  Text(
                    description, // Product description
                    style: TextStyle(
                      fontSize: 14, // Font size for product description
                      color: Colors.white.withOpacity(0.7), // Text color with transparency
                    ),
                    maxLines: 2, // Maximum number of lines for the description
                    overflow: TextOverflow.ellipsis, // Adds "..." if the text is too long
                  ),
                  const SizedBox(height: 4), // Space between description and price
                  Text(
                    '\$${price.toStringAsFixed(2)}', // Product price formatted to 2 decimal places
                    style: const TextStyle(
                      fontSize: 16, // Font size for product price
                      fontWeight: FontWeight.bold, // Bold font
                      color: Colors.greenAccent, // Text color for price
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another Screen'), // Title of the AppBar
      ),
      body: Center(
        child: Text('You are on another screen!'), // Text displayed in the center of the screen
      ),
    );
  }
}
