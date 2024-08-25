import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:shopping_app/src/helper/lists.dart';
import 'package:shopping_app/src/helper/item_card.dart';
import 'package:shopping_app/src/screens/item_screen.dart';

//This class contain screen of all porduct
class AllProductsScreen extends StatefulWidget {
  const AllProductsScreen({super.key});

  @override
  State<AllProductsScreen> createState() => _AllProductsScreenState();
}

class _AllProductsScreenState extends State<AllProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: ColorsConstant.beige,

            //app bar
            appBar: AppBar(
              backgroundColor: ColorsConstant.beige,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 34,
                    color: ColorsConstant.purple,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              title: Text(
                "Lavender",
                style: GoogleFonts.luxuriousScript(
                    fontSize: 60, color: ColorsConstant.darkPurple),
              ),
              actions: [
                Icon(
                  FluentIcons.heart_12_filled,
                  size: 34,
                  color: ColorsConstant.purple,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  FluentIcons.cart_24_filled,
                  size: 34,
                  color: ColorsConstant.purple,
                ),
                const SizedBox(
                  width: 30,
                ),
              ],

              //TabBar
              bottom: TabBar(
                  dividerHeight: 0,
                  indicatorSize: TabBarIndicatorSize.label,
                  padding:
                      const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
                  indicator: ShapeDecoration(
                    color: ColorsConstant.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    shadows: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 89, 89, 89)
                            .withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  tabs: [
                    Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: const Offset(0, 2),
                                blurRadius: 4,
                                spreadRadius: 1,
                                blurStyle: BlurStyle.outer),
                          ],
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Flowers",
                              style: GoogleFonts.abhayaLibre(
                                  fontSize: 20,
                                  color: ColorsConstant.darkPurple),
                            ))),
                    Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: const Offset(0, 2),
                                blurRadius: 4,
                                spreadRadius: 1,
                                blurStyle: BlurStyle.outer),
                          ],
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Bouquts",
                            style: GoogleFonts.abhayaLibre(
                                fontSize: 20, color: ColorsConstant.darkPurple),
                          ),
                        )),
                    Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: const Offset(0, 2),
                                blurRadius: 4,
                                spreadRadius: 1,
                                blurStyle: BlurStyle.outer),
                          ],
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Plants",
                            style: GoogleFonts.abhayaLibre(
                                fontSize: 20, color: ColorsConstant.darkPurple),
                          ),
                        )),
                  ]),
            ),

            //body
            body: TabBarView(children: [
              GridView.builder(
                padding: const EdgeInsets.all(10.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 220 / 350),
                itemCount: 6,
                itemBuilder: (context, index) {
                  final item = cardItem[index];
                  return ItemCard(
                    image: item['image'] ?? '',
                    title: item['title'] ?? '',
                    subtitle: item['subtitle'] ?? '',
                    price: item['price'] ?? '',
                  );
                },
              ),
              GridView.builder(
                padding: const EdgeInsets.all(10.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 220 / 350),
                itemCount: 4,
                itemBuilder: (context, index) {
                  final item = cardItem[index];
                  return ItemCard(
                    image: item['image'] ?? '',
                    title: item['title'] ?? '',
                    subtitle: item['subtitle'] ?? '',
                    price: item['price'] ?? '',
                  );
                },
              ),
              GridView.builder(
                padding: const EdgeInsets.all(10.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 220 / 350),
                itemCount: 1,
                itemBuilder: (context, index) {
                  final item = cardItem[index];
                  return GestureDetector(
                      onTap: () {
                        // Navigate to ItemScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemScreen(
                              image: item['image'] ?? '',
                              title: item['title'] ?? '',
                              subtitle: item['subtitle'] ?? '',
                              price: item['price'] ?? '',
                            ),
                          ),
                        );
                      },
                      child: ItemCard(
                        image: item['image'] ?? '',
                        title: item['title'] ?? '',
                        subtitle: item['subtitle'] ?? '',
                        price: item['price'] ?? '',
                      ));
                },
              ),
            ])));
  }
}
