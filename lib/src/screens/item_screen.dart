import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:shopping_app/src/widgets/about_button.dart';
import 'package:shopping_app/src/widgets/drawer_bulid.dart';

//contain item data with alert dialog
class ItemScreen extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;

  const ItemScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  bool isPressedHeart = false;
  bool isPressedCart = false;

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
              children: [
                Image.asset(widget.image),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: GoogleFonts.abhayaLibre(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: ColorsConstant.darkPurple,
                          ),
                        ),
                        Text(
                          widget.subtitle,
                          style: GoogleFonts.abhayaLibre(
                            fontSize: 24,
                            color: ColorsConstant.purple,
                          ),
                        ),
                        Text(
                          widget.price,
                          style: GoogleFonts.abhayaLibre(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: ColorsConstant.darkPurple,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    IconButton(
                      icon: Icon(
                        isPressedHeart
                            ? FluentIcons.heart_12_filled
                            : FluentIcons.heart_12_regular,
                        size: 37,
                        color: ColorsConstant.purple,
                      ),
                      onPressed: () {
                        setState(() {
                          isPressedHeart = !isPressedHeart;
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        isPressedCart
                            ? FluentIcons.cart_24_filled
                            : FluentIcons.cart_16_regular,
                        size: 37,
                        color: ColorsConstant.purple,
                      ),
                      onPressed: () {
                        setState(() {
                          isPressedCart = !isPressedCart;
                        });
                      },
                    ),
                  ],
                ),

                //alert dialog
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 140),
                  child: aboutBotton(context: context),
                )
              ],
            )));
  }
}
