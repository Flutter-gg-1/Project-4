



import 'dart:developer';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:pro4/models/product_model.dart';
import 'package:pro4/widget/stack_product_item.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {

  int barIndex = 0;

  List<ProductModel> proLis = [

    ProductModel(title: "pro1", price: 33, description: "good pro", img: "asset/img/1.jpeg"),
    ProductModel(title: "pro2", price: 33, description: "good pro", img: "asset/img/2.jpeg"),
    ProductModel(title: "pro2", price: 33, description: "good pro", img: "asset/img/2.jpeg"),
    ProductModel(title: "pro2", price: 33, description: "good pro", img: "asset/img/2.jpeg"),
    ProductModel(title: "pro2", price: 33, description: "good pro", img: "asset/img/2.jpeg"),
    ProductModel(title: "pro2", price: 33, description: "good pro", img: "asset/img/2.jpeg"),
    ProductModel(title: "pro2", price: 33, description: "good pro", img: "asset/img/2.jpeg"),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      drawer: Drawer(

        child: Container(
          

          color: Colors.red,
        ),
      ),

      bottomNavigationBar: BottomNavyBar(
        showElevation: false,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        selectedIndex: barIndex,

        onItemSelected: (value) {

          log(value.toString());

          barIndex = value;
          setState(() {
            
          });
          
        },

        items: [

          BottomNavyBarItem(icon: const Icon(FontAwesome.house_chimney_crack_solid) , title:const Text(" hello")),
          BottomNavyBarItem(icon: const Icon(FontAwesome.cart_plus_solid) , title:const Text("hei"))
        ],
      ),



      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,


        title:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
      
                const Icon(FontAwesome.store_solid , color:Colors.green ,),
                const SizedBox(width: 10,),
                Text("MyStore", style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 24),)
      
              ],
            ),

        centerTitle: true,
      ),







      body: Padding(
        padding: const EdgeInsets.only(top: 90 ,left: 10, right: 10),
        child: GridView.builder(
                  clipBehavior: Clip.none,
                  itemCount: proLis.length ,
                  gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
            
                      // how many cloum in one row
                      crossAxisCount: 2,
                      childAspectRatio: 1.3,
                      // the x
                      crossAxisSpacing: 10,
                      // the y
                      mainAxisSpacing: 40),
                  itemBuilder: (context, index) {
                    return  StackProductItem(productModel: proLis[index],);
                  },
                ),
      ),
    );
  }
}