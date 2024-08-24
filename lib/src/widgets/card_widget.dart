import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String photPath;
  final String text;
  final String price;
  const CardWidget({super.key, required this.photPath, required this.price, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 4,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.asset(
                                photPath,
                                height: 250,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fill,
                              ),
                            ),
                             ListTile(
                              title: Text(
                                text,
                                style: const TextStyle(fontSize: 20),
                              ),
                              trailing: Text(
                                price,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff582277),
                                      minimumSize:
                                          const Size(20, 20)),
                                  child: const Icon(Icons.shopping_cart_outlined, color: Colors.white,)
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff582277),
                                      minimumSize:
                                          const Size(20, 20)),
                                  child: const Icon(Icons.favorite_border_rounded, color: Colors.white,)
                                ),
                              ],
                            )
                          ],
                        ),
                      );
  }
}