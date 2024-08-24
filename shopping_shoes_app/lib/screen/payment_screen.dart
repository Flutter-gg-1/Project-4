import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_shoes_app/theme/custom_app_theme.dart';
import '../validate/card_number_input.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController txtCardNumber = TextEditingController();
  TextEditingController txtCardMExpire = TextEditingController();
  TextEditingController txtCardYExpire = TextEditingController();
  TextEditingController txtCardHolder = TextEditingController();

  String cardNumber = "";
  String cardMExpire = "";
  String cardYExpire = "";
  String cardHolder = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
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
            Text(
              "Payment",
              style: AppThemes.txtStyleTitlePage,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: size.width,
              height: size.height / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: txtCardNumber,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16),
                      CardNumberInput()
                    ],
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: const TextInputType.numberWithOptions(),
                    decoration: const InputDecoration(
                      suffix: Icon(Icons.credit_card),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                      ),
                      hintText: 'XXXX XXXX XXXX XXXX',
                    ),
                    onChanged: (value) => setState(() {
                      cardNumber = value;
                    }),
                    validator: (value) {
                      if (value!.length > 22 || value.length < 22) {
                        return 'Card number must be 16 digits';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width / 2.3,
                        child: TextFormField(
                          cursorWidth: 4,
                          controller: txtCardMExpire,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(2),
                          ],
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: const TextInputType.numberWithOptions(),
                          decoration: const InputDecoration(
                            suffix: Icon(Icons.calendar_month),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black12, width: 1.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black12, width: 1.0),
                            ),
                            hintText: 'MM',
                          ),
                          onChanged: (value) => setState(() {
                            cardMExpire = value;
                          }),
                          validator: (value) {
                            if (value!.isEmpty ||
                                int.tryParse(value.toString())! > 12 ||
                                int.tryParse(value.toString())! == 0) {
                              return 'Enter number 1-12';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width / 2.3,
                        child: TextFormField(
                          controller: txtCardYExpire,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: const TextInputType.numberWithOptions(),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(2),
                          ],
                          decoration: const InputDecoration(
                            suffix: Icon(Icons.calendar_month),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black12, width: 1.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black12, width: 1.0),
                            ),
                            hintText: 'YY',
                          ),
                          onChanged: (value) => setState(() {
                            cardYExpire = value;
                          }),
                          validator: (value) {
                            if (value!.isEmpty ||
                                int.tryParse(value.toString())! < 24) {
                              return "It isn't vaild";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: txtCardHolder,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z ]")),
                    ],
                    decoration: const InputDecoration(
                      suffix: Icon(Icons.person),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                      ),
                      hintText: 'Card holder',
                    ),
                    onChanged: (value) => setState(() {
                      cardHolder = value;
                    }),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Card holder must be fill it';
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                if (cardHolder.isEmpty ||
                    cardNumber.isEmpty ||
                    cardMExpire.isEmpty ||
                    cardYExpire.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.red,
                      content: Center(
                        child: Text(
                          "Please fill the fields",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )));
                } else {
                  showModalBottomSheet(
                      backgroundColor: const Color.fromARGB(255, 160, 196, 129),
                      context: context,
                      builder: (BuildContext context) {
                        return const SizedBox(
                          height: 400,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(
                                  Icons.check_circle_outline,
                                  size: 100,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Your order is complete :)",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Divider(
                                  color: Colors.white,
                                ),
                                Text(
                                  "Order#1001",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Divider(
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "You will be receiving a confirmation email with order details. ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                }
              },
              child: Container(
                width: size.width,
                height: size.height / 16,
                margin: const EdgeInsets.all(16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0xffcb3759),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Complete purchase",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ).animate(delay: 3000.ms).shake(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
