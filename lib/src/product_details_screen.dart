import 'package:flutter/material.dart';
import 'package:shopping/global.dart';
import 'package:shopping/model/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String src;
  final String name;
  final double price;
  final String details;
  const ProductDetailsScreen(
      {super.key,
      required this.src,
      required this.name,
      required this.price,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 512,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  elevation: 10,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  child: SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2.5,
                      child: Image.asset(src)),
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: Column(
                    children: [
                      ListTile(
                        title: Center(child: Text(name)),
                        subtitle: Center(child: Text("$price")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(details),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            cart.add(Product(
                                name: name,
                                src: src,
                                price: price,
                                description: details));

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Add to was successfull!!')),
                            );
                          },
                          child: const Text("Add to cart"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
