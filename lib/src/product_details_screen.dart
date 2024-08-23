import 'package:flutter/material.dart';

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
                  height: MediaQuery.of(context).size.height / 2,
                  child: Image.asset(src)),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2 - 80,
              child: Column(
                children: [
                  ListTile(
                    title: Center(child: Text(name)),
                    subtitle: Center(child: Text("$price")),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(details),
                  ),
                  ElevatedButton(onPressed: (){}, child:const Text("Add to cart"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
