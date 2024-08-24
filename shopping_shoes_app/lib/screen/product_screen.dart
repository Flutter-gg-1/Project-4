import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:like_button/like_button.dart';
import 'package:shopping_shoes_app/widget/custom_widget.dart';
import 'package:shopping_shoes_app/data/global_variabels.dart';
import 'package:shopping_shoes_app/model/cart_model.dart';
import 'package:shopping_shoes_app/model/shoes_model.dart';
import 'package:shopping_shoes_app/theme/custom_app_theme.dart';

class ProductScreen extends StatefulWidget {
  final ShoesModel itemModel;
  const ProductScreen({super.key, required this.itemModel});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String? selected;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.4,
                child: Stack(
                  children: [
                    Positioned(
                      top: 1,
                      child: RotatedBox(
                        quarterTurns: -4,
                        child: CustomPaint(
                          painter: MyPainter(),
                          size: Size(size.width / 0.35, size.height / 1.4),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 40,
                        left: size.width / 2.23,
                        child: Text(
                          widget.itemModel.name,
                          style: AppThemes.txtStyleItemName,
                        )),
                    Positioned(
                        top: 40,
                        left: 10,
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        )),
                    Positioned(
                        top: 40,
                        right: 10,
                        child: LikeButton(
                          likeCount: 14,
                          countBuilder: (likeCount, isLiked, text) {
                            return Text(
                              text,
                              style: TextStyle(
                                  color: isLiked ? Colors.white : Colors.grey),
                            );
                          },
                          likeBuilder: (isLiked) {
                            return Icon(
                              isLiked
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: isLiked ? Colors.redAccent : Colors.white,
                            );
                          },
                        )),
                    Positioned(
                        top: 105,
                        right: 90,
                        child: RotationTransition(
                          turns: const AlwaysStoppedAnimation(-30 / 360),
                          child: SizedBox(
                              width: size.width * 0.8,
                              child: Image.asset(widget.itemModel.img)),
                        )),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: widget.itemModel.modelColor.withOpacity(0.3),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.itemModel.model,
                        style: AppThemes.txtStyleTitlePage),
                    Text(
                      "${widget.itemModel.price.toString()} SAR",
                      style: AppThemes.txtStyleTitlePage,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.itemModel.details,
                  maxLines: 6,
                  style: const TextStyle(color: Colors.black38),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "MORE DETAILS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Size",
                      style: AppThemes.txtStyleTitlePage,
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "UK",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text("USA",
                                style: TextStyle(
                                    color: Colors.black26,
                                    fontWeight: FontWeight.bold)))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: size.width,
                height: size.height / 14,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.itemModel.sizes!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          selected = widget.itemModel.sizes![index];
                          isSelected = true;
                          setState(() {});
                        },
                        child: Container(
                          width: 70,
                          height: 50,
                          decoration: BoxDecoration(
                              color: selected == widget.itemModel.sizes![index]
                                  ? widget.itemModel.modelColor
                                  : Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10)),
                          margin: const EdgeInsets.all(8),
                          child: Center(
                              child: Text(
                            widget.itemModel.sizes![index],
                            style: TextStyle(
                                color:
                                    selected == widget.itemModel.sizes![index]
                                        ? Colors.white
                                        : Colors.black),
                          )),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  if (isSelected == false) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.redAccent,
                        content: Center(
                          child: Text("Please Choose the Size!",
                              style: AppThemes.txtStyleWhiteBold),
                        )));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.lightGreen,
                        content: Center(
                          child: Text(
                            "Added to cart ",
                            style: AppThemes.txtStyleWhiteBold,
                          ),
                        )));
                    myCartCount++;
                    var productToCart = CartModel(
                        name: widget.itemModel.name,
                        price: widget.itemModel.price,
                        img: widget.itemModel.img,
                        modelColor: widget.itemModel.modelColor,
                        model: widget.itemModel.model,
                        selectedSize: selected.toString(),
                        qnt: 1,
                        details: widget.itemModel.details);
                    myCart.add(productToCart);
                    setState(() {});
                  }
                },
                child: Container(
                  width: size.width,
                  height: size.height / 16,
                  margin: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: widget.itemModel.modelColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "ADD TO CART",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Icon(
                        Icons.add_shopping_cart_outlined,
                        color: Colors.white,
                      )
                    ].animate(delay: 3000.ms).shake(),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
