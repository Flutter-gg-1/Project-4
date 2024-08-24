import 'package:flutter/material.dart';
import 'package:shop_app/Src/customWidgets/order_widget.dart';

class FaveoriteScreen extends StatelessWidget {
  const FaveoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 231, 231, 231),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 231, 231, 231),
            centerTitle: true,
            title: const Text("Faveorite",
                style: TextStyle(
                  color: Color(0xff5d665b),
                  fontSize: 20,
                  fontFamily: "DMSherifText",
                )),
            automaticallyImplyLeading: false,
            bottom: const TabBar(
                indicatorColor: Color(0xff9baa99),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Color(0xff9baa99),
                unselectedLabelColor: Colors.grey,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                tabs: [Text("Product"), Text("Brand")]),
          ),
          body: TabBarView(clipBehavior: Clip.none, children: [
            const Column(
              children: [
                SizedBox(height: 30),
                OrderWidget(
                    name: "Nike green",
                    price: "760 SAR",
                    imgUrl: "assets/shoes1.png"),
              ],
            ),
            Column(children: [
              const SizedBox(height: 30),
              Container(
                  height: 130,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 3,
                            color: Colors.black12,
                            offset: Offset(0, 0),
                            blurStyle: BlurStyle.outer,
                            blurRadius: 6),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(children: [
                    const Text(
                      "Nike",
                      style: TextStyle(
                        color: Color(0xff5d665b),
                        fontSize: 20,
                        fontFamily: "DMSherifText",
                      ),
                    ),
                    const SizedBox(width: 160),
                    Image.asset(
                      "assets/Nike_logo.png",
                      scale: 4,
                    )
                  ])),
              const SizedBox(height: 30),
              Container(
                  height: 130,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 3,
                            color: Colors.black12,
                            offset: Offset(0, 0),
                            blurStyle: BlurStyle.outer,
                            blurRadius: 6),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(children: [
                    const Text(
                      "Puma",
                      style: TextStyle(
                        color: Color(0xff5d665b),
                        fontSize: 20,
                        fontFamily: "DMSherifText",
                      ),
                    ),
                    const SizedBox(width: 160),
                    Image.asset(
                      "assets/Puma_logo.png",
                      scale: 4,
                    )
                  ]))
            ])
          ]),
        ));
  }
}
