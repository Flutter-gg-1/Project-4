
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:coffeshop_app/widget/home/coffe_option.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LowerSection extends StatelessWidget {
  const LowerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 35),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
            ),
            ButtonsTabBar(
              radius: 15,
              backgroundColor: const Color(0xFFEFBC9B),
              buttonMargin: const EdgeInsets.only(right: 35),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              labelStyle: GoogleFonts.sora(color: Colors.white),
              tabs: const [
                Tab(
                  text: 'Cappucino',
                ),
                Tab(
                  text: 'Mocha',
                ),
                Tab(
                  text: 'Latte',
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              child: const TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CoffeOption(
                              title: 'Cappucino',
                              imagePath: 'assest/image/coffe.jpg',
                              price: 11.00,
                            ),
                            CoffeOption(
                                title: 'Cappucino',
                                imagePath: 'assest/image/coffe2.jpg',
                                price: 9.50),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CoffeOption(
                              title: 'Cappucino',
                              imagePath: 'assest/image/coffe.jpg',
                              price: 11.00,
                            ),
                            CoffeOption(
                                title: 'Cappucino',
                                imagePath: 'assest/image/coffe2.jpg',
                                price: 9.50),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CoffeOption(
                        title: 'Mocha',
                        imagePath: 'assest/image/mocha1.jpg',
                        price: 17.00,
                      ),
                      CoffeOption(
                          title: 'Mocha',
                          imagePath: 'assest/image/mocha2.jpg',
                          price: 10.50),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CoffeOption(
                        title: 'Latte',
                        imagePath: 'assest/image/latte1.jpg',
                        price: 13.00,
                      ),
                      CoffeOption(
                          title: 'Latte',
                          imagePath: 'assest/image/latte2.jpg',
                          price: 7.50),
                    ],
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
