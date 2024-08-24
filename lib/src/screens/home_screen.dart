import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/Lists.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:shopping_app/src/widgets/drawer_bulid.dart';
import 'package:shopping_app/item_card.dart';
import 'package:shopping_app/src/widgets/new_collections_container.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:shopping_app/src/widgets/shimmer_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool isLoading;
  @override
  void initState() {
    isLoading = true;
    Future.delayed(const Duration(seconds: 3), () {
      isLoading = false;
      setState(() {});
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.beige,

      //app bar
      appBar: AppBar(
        backgroundColor: ColorsConstant.beige,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              size: 34,
              color: ColorsConstant.purple,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Text(
          "Home",
          style: GoogleFonts.abhayaLibre(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              color: ColorsConstant.darkPurple),
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
      ),
      //drawer
      drawer: drawerBuild(),

      //body
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //new colliction List view
          isLoading?
          SizedBox(
            height: 420,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 20),
                    child: shimmerCollectionsContainer(
                    ),
                  );
                }),
          ):
          SizedBox(
            height: 420,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 20),
                    child: newCollectionsContainer(
                      image: collectionItems[index]['image'],
                      text: collectionItems[index]['text']!,
                    ),
                  );
                }),
          ),

          //Recommended
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended for you",
                  style: GoogleFonts.abhayaLibre(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: ColorsConstant.darkPurple),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: GoogleFonts.abhayaLibre(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ColorsConstant.purple),
                  ),
                ),
              ],
            ),
          ),

          //recommended list viwe
          SizedBox(
            height: 400,
            width: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, int index) {
                  final item = cardItem[index];
                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 20),
                      child: ItemCard(
                        image: item['image'] ??
                            '', 
                        title: item['title'] ?? '',
                        subtitle: item['subtitle'] ?? '',
                        price: item['price'] ?? '',
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
