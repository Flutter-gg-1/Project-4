import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:icons_plus/icons_plus.dart';
import 'package:pro4/global.dart';
import 'package:pro4/models/product_model.dart';
import 'package:pro4/widget/alter_dio_widget.dart';

class CartItemWidget extends StatefulWidget {
  final ProductModel productModel;
  const CartItemWidget({
    super.key,
    required this.productModel,
  });

  @override
  State<CartItemWidget> createState() => _CartItemWidget();
}

class _CartItemWidget extends State<CartItemWidget> {
  

  @override
  Widget build(BuildContext context) {



    return  Padding(
      padding: const EdgeInsets.only(left: 66, right: 66 , bottom: 20),
      child: Material(
      
        elevation: 5,
        borderRadius: BorderRadius.circular(16),
        child: Container(
        
        
          
          height: 150,
          decoration:   BoxDecoration(
        
        
            borderRadius: BorderRadius.circular(16)
          ),
      
      
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
      
      
            children: [
      
      
              Image.asset(widget.productModel.img , width: 90, height: 90,),

              const SizedBox(width: 30,),
      
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                          widget.productModel.title,
                          style:  GoogleFonts.lato(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                        ),

                         Text(
                      "\$${widget.productModel.price}",
                      style:  GoogleFonts.lato(color: Colors.grey, fontSize: 15),
                    ),
                ],
              ),


                    
      
              
            ],
          ),
        
        
          
        ),
      ),
    );
  
  }
}
