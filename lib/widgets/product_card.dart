import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/models/user.dart';
import 'package:shopping_app/widgets/add_to_cart.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  final User user;
  const ProductCard({super.key, required this.product, required this.user});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 200),(){
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? Shimmer(
      child: Container(
        height: 200,
        width: 150,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey),
      ),
    )
    : InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: thirdColor,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          context: context, builder: (context){
          return SizedBox(
            width: 400,
            height: 300,
            child: AddToCart(product: widget.product, user:widget.user),
          );
        });
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: secondaryColor,
          boxShadow: [BoxShadow(color: Colors.black45, offset: Offset(1, 2), blurRadius: 5)]
        ),
        child: Column(
          children: [
            Badge(
              alignment: Alignment.topLeft,
              isLabelVisible: widget.product.offer != 'no' ? true : false,
              label: Text(widget.product.offer, style: GoogleFonts.poppins(fontSize: 15)),
              child: Image.asset(widget.product.pic, width: 150, height: 150,)
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Text(widget.product.name, style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w500
              )),
            ),
            Container(
              alignment: Alignment.center,
              width: 150,
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("${widget.product.price} SR", textAlign: TextAlign.end, style: GoogleFonts.poppins(
                    color: mainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Row(children: List.generate(widget.product.stars, (index){return const Icon(Icons.star, color: Colors.yellow, size: 10,);}))
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}