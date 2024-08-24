import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:counter_button/counter_button.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/customWidgets/custom_background.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ProductScreen> {
  int counterValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      ),
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              CustomPaint(
                size: const Size(335, 667),
                painter: RPSCustomPainter(),
              ),
              Positioned(
                  top: 20,
                  right: 30,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Add to cart",
                        style: TextStyle(color: Color(0xff9baa99)),
                      ))),
              Positioned(
                left: 30,
                top: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Nike green",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: "DMSherifText",
                      ),
                    ),
                    const SizedBox(height: 10),
                    AnimatedRatingStars(
                      onChanged: (double rating) {},
                      customFilledIcon: Icons.star,
                      starSize: 20,
                      emptyColor: Colors.white,
                      customHalfFilledIcon: Icons.star_border,
                      customEmptyIcon: Icons.star_border,
                      readOnly: true,
                    ),
                    const Text("760 SAR",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ],
                ),
              ),
              Positioned(
                top: 100,
                right: 0,
                child: SizedBox(
                  child: Image.asset("assets/shoes1.png", scale: 2),
                ),
              ),
              Positioned(
                left: 30,
                bottom: 230,
                child: Row(
                  children: [
                    const Text("Size",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    const SizedBox(width: 100),
                    CounterButton(
                      loading: false,
                      onChange: (int val) {
                        setState(() {
                          counterValue = val;
                        });
                      },
                      count: counterValue,
                      countColor: const Color.fromARGB(255, 255, 255, 255),
                      buttonColor: const Color.fromARGB(255, 255, 255, 255),
                      progressColor: const Color.fromARGB(255, 255, 255, 255),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 30,
                bottom: 160,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text("38",
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text("39",
                          style: TextStyle(
                              color: Color(0xff9baa99), fontSize: 13)),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text("40",
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                    ),
                    const SizedBox(width: 10),
                    Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text("41",
                            style:
                                TextStyle(color: Colors.white, fontSize: 13)))
                  ],
                ),
              ),
              const Positioned(
                  left: 30,
                  bottom: 60,
                  child: Text(
                    "latest collection of casual sneakers,\nwhere classic design meets modern\ncomfort.Crafted from high-quality",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
