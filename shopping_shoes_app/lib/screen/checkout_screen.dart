import 'package:flutter/material.dart';
import 'package:shopping_shoes_app/data/app_helper.dart';
import 'package:shopping_shoes_app/data/global_variabels.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  double shoppingFee = 25;
  double taxFee = 106;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sum = AppHelper.getAllAmountItems() + shoppingFee + taxFee;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Icon(Icons.arrow_back),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Checkout",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Total ${AppHelper.getAllLengthItems()} Items")
                ],
              ),
              const Divider(),
              Container(
                  width: size.width,
                  height: size.height / 4.5,
                  padding: const EdgeInsets.all(8),
                  child: myCart.isNotEmpty
                      ? ListView.builder(
                          itemCount: myCart.length,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                Container(
                                  width: size.width,
                                  height: 100,
                                  margin: const EdgeInsets.all(4),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 20,
                                        left: 10,
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                              color: myCart[index].modelColor,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                        ),
                                      ),
                                      Positioned(
                                          bottom: 30,
                                          left: 25,
                                          child: RotationTransition(
                                            turns: const AlwaysStoppedAnimation(
                                                -30 / 360),
                                            child: SizedBox(
                                                width: 80,
                                                child: Image.asset(
                                                    myCart[index].img)),
                                          )),
                                      Positioned(
                                          top: 20,
                                          left: 180,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${myCart[index].name} ${myCart[index].model}",
                                                style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    "QNT:",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text("${myCart[index].qnt}",
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Text("Size:",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                      "${myCart[index].selectedSize} UK",
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        )
                      : const Center(
                          child:
                              Text("You have not added anything to the cart"))),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: size.width,
                height: size.height / 2.3,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Subtotal"),
                          Text("${AppHelper.getAllAmountItems()} SAR")
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Shipping fee"),
                          Text("$shoppingFee SAR")
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Tax fee 5%"),
                          Text("$taxFee SAR")
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Order total",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("$sum SAR",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Payment Method",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Change",
                                style: TextStyle(color: Colors.blue),
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 250,
                            height: 50,
                            child: ListTile(
                              leading: Image.asset(
                                "assets/img/applePay.png",
                                width: 70,
                              ),
                              title: Text("Apple Pay"),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Shipping Address",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Change",
                                style: TextStyle(color: Colors.blue),
                              ))
                        ],
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Saudi Arabia - Qatif - TarutIsland\n Phone +966 597 331 447"))
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width,
                height: size.height / 16,
                margin: const EdgeInsets.all(16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0xffcb3759),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Continue to pay",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
