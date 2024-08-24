import 'package:flutter/material.dart';
import 'package:shopping_shoes_app/data/app_helper.dart';
import 'package:shopping_shoes_app/data/global_variabels.dart';
import 'package:shopping_shoes_app/screen/payment_screen.dart';
import 'package:shopping_shoes_app/theme/custom_app_theme.dart';

import '../model/cart_model.dart';

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
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back)),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Checkout",
                    style: AppThemes.txtStyleTitlePage,
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
                            CartModel model = myCart[index];
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
                                              color: model.modelColor,
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
                                                child: Image.asset(model.img)),
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
                                                "${model.name} ${model.model}",
                                                style: AppThemes.txtStyle_12B,
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "QNT:",
                                                    style:
                                                        AppThemes.txtStyleBold,
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text("${model.qnt}",
                                                      style: AppThemes
                                                          .txtStyleBold),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text("Size:",
                                                      style: AppThemes
                                                          .txtStyleBold),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                      "${model.selectedSize} UK",
                                                      style: AppThemes
                                                          .txtStyleBold),
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
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: AppThemes.txtStyleGoogleFont,
                          ),
                          Text(
                            "${AppHelper.getAllAmountItems()} SAR",
                            style: AppThemes.txtStyleGoogleFont,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shipping fee",
                            style: AppThemes.txtStyleGoogleFont,
                          ),
                          Text(
                            "$shoppingFee SAR",
                            style: AppThemes.txtStyleGoogleFont,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tax fee 5%",
                            style: AppThemes.txtStyleGoogleFont,
                          ),
                          Text(
                            "$taxFee SAR",
                            style: AppThemes.txtStyleGoogleFont,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order total", style: AppThemes.txtStyleBold),
                          Text("$sum SAR", style: AppThemes.txtStyleBold)
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Method",
                            style: AppThemes.txtStyleTitlePage,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Change",
                                style: AppThemes.txtStyleBlue,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: ListTile(
                              leading: Image.asset(
                                "assets/img/visa-icon.png",
                                width: 25,
                              ),
                              title: Text("Visa",
                                  style: AppThemes.txtStyleGoogleFont),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Shipping Address",
                            style: AppThemes.txtStyleTitlePage,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Change",
                                style: AppThemes.txtStyleBlue,
                              ))
                        ],
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Saudi Arabia - Qatif - TarutIsland\n Phone +966 597 331 447",
                            style: AppThemes.txtStyleGoogleFont,
                          ))
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  var route = MaterialPageRoute(
                      builder: (BuildContext context) => const PaymentScreen());
                  Navigator.of(context).push(route);
                },
                child: Container(
                  width: size.width,
                  height: size.height / 16,
                  margin: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xffcb3759),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Continue to pay",
                    style: AppThemes.txtStyleBtn,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
