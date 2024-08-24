import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';

import 'bottom_navigation_bar.dart';
class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({super.key});

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController cardNumberCotroller = TextEditingController();
    TextEditingController cardHolderCotroller = TextEditingController();
    TextEditingController expiredDateMCotroller = TextEditingController();
    TextEditingController expiredDateYCotroller = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 203, 189, 208),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Credit card information", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),),
          Center(
            child: Container(
              height: 350,
              width: 315.48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 31, right: 31),
                      child: TextFormField(
                        controller: cardNumberCotroller,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter card number";
                          }
                          if (value.length != 16) {
                            return "The card number consist of 16 digits";
                          }
                          return null;
                        },
                        
                        decoration: InputDecoration(
                            hintText: "Card number",
                            hintStyle:  TextStyle(
                                color: const Color(0xff582277).withOpacity(0.7), fontSize: 14),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3.28)),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffffffff))
                              )),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 31, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: expiredDateMCotroller,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter MM/YY";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: "MM/YY",
                                  hintStyle:  TextStyle(
                                      color: const Color(0xff582277).withOpacity(0.7), fontSize: 9),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3.6)),
                                      enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffffffff))
                              )
                                      ),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Expanded(
                            child: TextFormField(
                              obscureText: true,
                              controller: expiredDateYCotroller,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter CVV";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: "CVV",
                                  hintStyle:  TextStyle(
                                      color: const Color(0xff582277).withOpacity(0.7), fontSize: 9),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3.6)),
                                      enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffffffff))
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 31, right: 31, top: 40),
                      child: TextFormField(
                        controller: cardHolderCotroller,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter card holder name";
                          }
                          if (RegExp(r'[0-9]').hasMatch(value)) {
                            return "Enter a letters only!";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Card Holder",
                            hintStyle:  TextStyle(
                                color: const Color(0xff582277).withOpacity(0.7), fontSize: 14),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3.28)),
                                enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffffffff))
                              )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 137),
              child: Container(
                height: 53.11,
                width: 269.46,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xffBB9AB1), Color(0xff987D9A)],
                        begin: Alignment(0, 0)),
                    borderRadius: BorderRadius.circular(15.62),
                    border: Border.all(color: const Color.fromARGB(255, 150, 147, 147), width: 1)),
                child: ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState?.validate() ?? false){
                      Dialogs.bottomMaterialDialog(
        msg: 'The invitation card will be send to your email soon ',
        title: 'Thank you',
        color: Colors.white,
        lottieBuilder: Lottie.asset(
          'assets/Animation - 1724533388149.json',
          fit: BoxFit.contain,
        ),
        context: context,
        actions: [
          IconsButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                return const BottomNavigationBarScreen();
              }));
            },
            text: 'Done',
            iconData: Icons.done,
            color: const Color(0xff987D9A),
            textStyle: const TextStyle(color: Colors.white),
            iconColor: Colors.white,
          ),
        ],
      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.62),
                    ),
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.transparent,
                  ),
                  child: const Text(
                    "Buy",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
