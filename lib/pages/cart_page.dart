import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:shopping_app/shared.dart';
import 'package:shopping_app/widgets/my_app_bar_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int total = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBarWidget(),
        body: loggedIn.cart.isNotEmpty
            ? Center(
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: loggedIn.cart.map((cartItem) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(12.0), 
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), 
                              ),
                            ],
                          ),
                          child: ListTile(
                            leading: Image.asset(cartItem.laptop.image),
                            title: Text(cartItem.laptop.name),
                            subtitle: Text(
                                "${cartItem.laptop.price.toString()} x ${cartItem.quantity}"),
                            trailing: IconButton(
                              onPressed: () {
                                loggedIn.cart.remove(cartItem);
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total: ${calculateTotal().toString()}",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        QuickAlert.show(
                                          context: context,
                                          type: QuickAlertType.success,
                                          text: 'Thank you choosing us ',
                                        );
                                        loggedIn.didPurchase = true;
                                        loggedIn.cart = [];
                                        setState(() {});
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 350,
                                        decoration: BoxDecoration(
                                            color: const Color(0xff5355ca),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Pay",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              )
            : Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  SizedBox(
                      height: 250,
                      child: Image.asset("assets/general/empty cart.png")),
                  const Text(
                    "Cart is empty",
                    style: TextStyle(fontSize: 24),
                  ),
                  const Text(
                    "Keep shopping and you will find a good laptop",
                  ),
                ],
              )));
  }

  int calculateTotal() {
    int total = 0;
    for (var cartItem in loggedIn.cart) {
      total += cartItem.laptop.price * cartItem.quantity;
    }
    return total;
  }
}
