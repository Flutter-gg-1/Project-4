import 'package:flutter/material.dart';
import 'package:shop_app/order_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff9baa99),
      ),
      drawer: const Drawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(clipBehavior: Clip.none, children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xff9baa99),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60))),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Spring Sales",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: "DMSherifText",
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Save up to \$20\non sale sneakers.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "DMSherifText"),
                            ),
                          ],
                        ),
                      ),
                      Image.asset("assets/onBordingImg1.png")
                    ],
                  ),
                ),
                Positioned(
                    left: 30,
                    top: 220,
                    width: 350,
                    child: SearchBar(
                      leading: const Icon(Icons.search),
                      hintStyle: WidgetStateProperty.all(
                          const TextStyle(color: Colors.black38, fontSize: 12)),
                      hintText: "Search for your faveorite brand",
                    )),
              ]),
              const SizedBox(height: 80),
              const OrderWidget(
                  name: "name", price: "price", imgUrl: "assets/shoes1.png"),
              const SizedBox(height: 20),
              const OrderWidget(
                  name: "name", price: "price", imgUrl: "assets/shoes2.png"),
              const SizedBox(height: 20),
              const OrderWidget(
                  name: "name", price: "price", imgUrl: "assets/shoes3.png")
            ],
          ),
        ),
      ),
    );
  }
}
