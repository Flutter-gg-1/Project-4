import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:shopping_app/src/helper/shape.dart';

class ItemCard extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;

  const ItemCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isPressedHeart = false;
  bool isPressedCart = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 220,
          decoration: BoxDecoration(
              color: ColorsConstant.violate,
              borderRadius: BorderRadius.circular(10),
              ),
              
        ),

        //wishList heart 
        Positioned(
          top: 10,
          left: 10,
          child: IconButton(
            icon: Icon(
              isPressedHeart
                  ? FluentIcons.heart_12_filled
                  : FluentIcons.heart_12_regular,
              size: 34,
              color: ColorsConstant.purple,
            ),
            onPressed: () {
              setState(() {
                isPressedHeart = !isPressedHeart;
              });
            },
          ),
        ),
        
        //shape
        Positioned(
            top: 120,
            left: 110,
            child: CustomPaint(
              size: const Size(200, 200),
              painter: RPSCustomPainter(),
            )),

        //image
        Positioned(
          top: 40,
            left: 30,
          child: 
        SizedBox( 
          height: 160,
          width: 160,
          child: Image.asset(widget.image, fit: BoxFit.contain,))
        ),


        //Title
        Positioned(
          bottom: 80,
          left: 20,
          child: Text(
            widget.title,
            style: GoogleFonts.abhayaLibre(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: ColorsConstant.darkPurple,
            ),
          ),
        ),

        //subtitle
        Positioned(
          bottom: 50,
          left: 20,
          child: Text(
            widget.subtitle,
            style: GoogleFonts.abhayaLibre(
              fontSize: 16,
              color: ColorsConstant.darkPurple,
            ),
          ),
        ),

        //price
        Positioned(
          bottom: 10,
          left: 18,
          child: Text(
            widget.price,
            style: GoogleFonts.abhayaLibre(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: ColorsConstant.darkPurple,
            ),
          ),
        ),

        //cart 
        Positioned(
          bottom: 0,
          left: 160,
          child: IconButton(
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
        ),
      ],
    );
  }
}
