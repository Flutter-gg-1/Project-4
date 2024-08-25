import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/models/user.dart';
import 'package:shopping_app/widgets/alert_with_icon.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  final User user;
  const AddToCart({super.key, required this.product, required this.user});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(widget.product.pic, width: 150, height: 150,),
        Text(widget.product.name, style: GoogleFonts.poppins(color: borderColor, fontSize: 20)),
        Text('${widget.product.price} SR', style: GoogleFonts.poppins(color: borderColor, fontSize: 15),),
        ElevatedButton(
          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(mainColor)),
          onPressed: (){
            widget.user.cart.add(widget.product);
            showDialog(context: context, builder: (context){
              return const AlertWithIcon(alert: 'Product is added to your cart', icon: Icons.check_circle_outline_outlined, iconColor: Colors.green);
            });
          }, child: Text('Add To Cart', style: GoogleFonts.poppins(
          color: Colors.white
        ),))
      ],
    );
  }
}