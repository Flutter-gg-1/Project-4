import 'package:flutter/material.dart';
import 'package:shopping_app/screens/item_screen.dart';
import 'package:shopping_app/utils/data/items_data.dart';

import '../models/item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Item> bestSellers = [items[2], items[4]];
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/background-main.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: -50,
          child: SizedBox(
              height: 400,
              width: 400,
              child: Image.asset(
                'assets/images/online-shopping.png',
                fit: BoxFit.cover,
              )),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2.3,
          left: (MediaQuery.of(context).size.width - 250) / 2,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 20,
                  surfaceTintColor: Colors.green,
                  fixedSize: const Size(250, 50),
                  backgroundColor: const Color.fromARGB(255, 222, 75, 49)),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height / 2.5,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/home-background.png',
                                ),
                                fit: BoxFit.cover)),
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemCount: bestSellers.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ItemScreen(
                                              item: bestSellers[index])));
                                },
                                child: Card(
                                  shadowColor: Colors.red,
                                  elevation: 10,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Image.asset(
                                          bestSellers[index].imagePath,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Text(
                                              '\$${bestSellers[index].price.toStringAsFixed(2)}',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  color: Colors.yellow[900],
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Text(
                                            bestSellers[index].name,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      );
                    });
              },
              child: const Text(
                'Best Sellers',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              )),
        )
      ],
    );
  }
}
