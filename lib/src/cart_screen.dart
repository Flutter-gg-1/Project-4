import 'package:flutter/material.dart';
import 'package:shopping/global.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return cart.isNotEmpty
        ? Stack(
            children: [
              ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: double.infinity,
                      child: Card(
                        child: ListTile(
                          leading: Image.asset(cart[index].src),
                          title: Text(cart[index].name),
                          subtitle: Text("${cart[index].price}"),
                        ),
                      ),
                    );
                  }),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      cart.clear();

                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('The purchase is complete'),
                          content: const Text('Enjoy your day'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                setState(() {});
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text("BUY NOW!!"),
                  ))
            ],
          )
        : const Center(child: Text("the Cart is empty"));
  }
}
