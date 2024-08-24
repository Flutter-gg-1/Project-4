import 'package:flutter/material.dart';
import 'package:shop_app/Src/alert_show.dart';
import 'package:shop_app/Src/customWidgets/category_style.dart';
import 'package:shop_app/Src/Screens/heels_screen.dart';
import 'package:shop_app/Src/helper/location_permission.dart';
import 'package:shop_app/Src/Screens/product_screen.dart';
import 'package:shop_app/Src/customWidgets/order_widget.dart';
import 'package:shop_app/Src/Screens/sneakrs_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String location = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff9baa99),
        actions: [
          Text(location),
          IconButton(
              onPressed: () async {
                determinePosition();

                location = ("Saudi Arbia, Riyadh");
                setState(() {});
              },
              icon: const Icon(Icons.location_on))
        ],
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "DMSherifText",
              ),
            ),
            const SizedBox(height: 50),
            CategoryStyle(
              title: "Sneakers",
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SneakrsScreen();
                }));
              },
            ),
            const SizedBox(height: 20),
            CategoryStyle(
              title: "High Hills",
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const HeelsScreen();
                }));
              },
            ),
            const SizedBox(height: 20),
            CategoryStyle(title: "Sandals"),
            const SizedBox(height: 20),
            CategoryStyle(title: "Flat shoes")
          ],
        ),
      ),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                                onPressed: () {
                                  return showAlert(context);
                                },
                                child: const Text(
                                  "Spring Sales",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: "DMSherifText",
                                  ),
                                )),
                            const SizedBox(height: 10),
                            const Text(
                              "Save up to \$20\non sale sneakers.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "DMSherifText"),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Image.asset("assets/onBordingImg1.png"))
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
              const SizedBox(height: 60),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Recommend",
                    style: TextStyle(
                      color: Color(0xff5d665b),
                      fontSize: 20,
                      fontFamily: "DMSherifText",
                    ),
                  ),
                  Text(
                    "see all..",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ProductScreen();
                  }));
                },
                child: const OrderWidget(
                    name: "Nike green",
                    price: "760 SAR",
                    imgUrl: "assets/shoes1.png"),
              ),
              const SizedBox(height: 20),
              const OrderWidget(
                  name: "Nike purple",
                  price: "450 SAR",
                  imgUrl: "assets/shoes2.png"),
              const SizedBox(height: 20),
              const OrderWidget(
                  name: "Black heels",
                  price: "800",
                  imgUrl: "assets/highHeel1.png"),
              const SizedBox(height: 20),
              const OrderWidget(
                  name: "Nike red",
                  price: "300 SAR",
                  imgUrl: "assets/shoes3.png")
            ],
          ),
        ),
      ),
    );
  }
}
