import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:shopping_app/src/widgets/drawer_bulid.dart';

class ItemScreen extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;

  const ItemScreen({super.key, required this.image,
    required this.title,
    required this.subtitle,
    required this.price,});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
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
      ),
      //drawer
      drawer: drawerBuild(),

      //body
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(widget.image),
            const SizedBox(height: 16.0),
            Text(
               widget.title,
            ),
            Text(
               widget.subtitle,
             
            ),
            Text(
              widget.price
              
            ),
          ],
        
      

    )));
  }
}