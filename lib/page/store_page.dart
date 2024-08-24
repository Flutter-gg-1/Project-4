import 'dart:developer';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:pro4/global.dart';
import 'package:pro4/models/product_model.dart';
import 'package:pro4/page/contact_us_page.dart';
import 'package:pro4/page/home_page.dart';
import 'package:pro4/page/item_page.dart';
import 'package:pro4/widget/button_widget.dart';
import 'package:pro4/widget/drwer_widget.dart';
import 'package:pro4/widget/stack_product_item.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  int barIndex = 0;


  


  

  

  List<ProductModel> proLis = [
    ProductModel(
        title: "pro1",
        price: 33,
        description: "good pro",
        img: "asset/img/1.jpeg"),
    ProductModel(
        title: "pro2",
        price: 33,
        description: "good pro",
        img: "asset/img/2.jpeg"),
    ProductModel(
        title: "pro2",
        price: 33,
        description: "good pro",
        img: "asset/img/2.jpeg"),
    ProductModel(
        title: "pro2",
        price: 33,
        description: "good pro",
        img: "asset/img/2.jpeg"),
    ProductModel(
        title: "pro2",
        price: 33,
        description: "good pro",
        img: "asset/img/2.jpeg"),
    ProductModel(
        title: "pro2",
        price: 33,
        description: "good pro",
        img: "asset/img/2.jpeg"),
    ProductModel(
        title: "pro2",
        price: 33,
        description: "good pro",
        img: "asset/img/2.jpeg"),
  ];



  late List<Widget> navPages;


  @override
  void initState() {
    navPages = [ItemPage(proLis: proLis), ContactUsPage()];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrwerWidget(),
      bottomNavigationBar: BottomNavyBar(
        showElevation: false,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        selectedIndex: barIndex,
        onItemSelected: (value) {
          log(value.toString());

          barIndex = value;
          setState(() {});
        },
        items: [
          BottomNavyBarItem(
              icon: const Icon(FontAwesome.cart_shopping_solid),
              title: const Text(" product")),
          BottomNavyBarItem(
              icon: const Icon(FontAwesome.phone_solid),
              title: const Text("contact"))
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                FontAwesome.store_solid,
                color: Colors.green,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "MyStore",
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 24),
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: navPages[barIndex]
    );
  }
}

