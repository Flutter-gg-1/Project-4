import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:icons_plus/icons_plus.dart';
import 'package:pro4/global.dart';
import 'package:pro4/models/product_model.dart';
import 'package:pro4/widget/alter_dio_widget.dart';

class StackProductItem extends StatefulWidget {
  final ProductModel productModel;
  const StackProductItem({
    super.key,
    required this.productModel,
  });

  @override
  State<StackProductItem> createState() => _StackProductItemState();
}

class _StackProductItemState extends State<StackProductItem> {
  bool isSelcted = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 0)
          ]),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productModel.title,
                    style:  GoogleFonts.lato(color: Colors.grey, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$${widget.productModel.price}"),
                      GestureDetector(
                        onTap: () {
                          if (isSelcted == false) {
                            isSelcted = true;

                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlterDioWidget(
                                  tex: "Proudct has been add !",
                                  isAdd: isSelcted,
                                );
                              },
                            );

                            cartList.add(widget.productModel);

                            log(cartList.toString());

                            setState(() {});
                          } else {
                            isSelcted = false;

                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlterDioWidget(
                                  tex: "Proudct has been remove !",
                                  isAdd: isSelcted,
                                );
                              },
                            );

                            ProductModel.removePro(
                                list: cartList, proId: widget.productModel.id);

                            log(cartList.toString());

                            setState(() {});
                          }
                        },
                        child: Icon(FontAwesome.plus_solid,
                            color: isSelcted == false
                                ? Colors.grey
                                : Colors.green),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            right: 53,
            top: -34,
            child: Image.asset(
              widget.productModel.img,
              height: 90,
              width: 90,
            ))
      ],
    );
  }
}
