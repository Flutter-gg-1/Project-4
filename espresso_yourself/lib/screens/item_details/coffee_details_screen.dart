import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/model/menu_item.dart';
import 'package:espresso_yourself/reusable_components/buttons/circle_btn_container_view.dart';
import 'package:espresso_yourself/reusable_components/buttons/custom_back_btn_view.dart';
import 'package:espresso_yourself/reusable_components/shapes/item_detail_shape.dart';
import 'package:espresso_yourself/screens/cart/cart_screen.dart';
import 'package:espresso_yourself/screens/item_details/subviews/cart_btn_view.dart';
import 'package:espresso_yourself/screens/item_details/subviews/description_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../extensions/color_ext.dart';
import '../../reusable_components/background_img_decoration.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  const CoffeeDetailsScreen({super.key, required this.item});

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        const BackgroundImgDecoration(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                const _HeaderView(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        children: [
                          _ImgView(item: item),
                          DescriptionView(item: item),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: CartBtnView(item: item),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class _HeaderView extends StatelessWidget {
  const _HeaderView();

  void _navigateToCart(BuildContext context) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => CartScreen()));

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomBackBtnView(context: context),
        const Text('Item Details').styled(size: 20, weight: FontWeight.w700),
        InkWell(
            onTap: () => _navigateToCart(context),
            child: const CircleBtnContainerView(
                size: 60,
                child:
                    Icon(CupertinoIcons.cart_fill, size: 35, color: C.text))),
      ],
    );
  }
}

class _ImgView extends StatelessWidget {
  const _ImgView({required this.item});

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: CustomPaint(
              painter: ItemDetailShape(),
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image(image: item.img),
            ),
          ),
          Align(
              alignment: Alignment.topRight,
              child: CircleBtnContainerView(
                  size: 70,
                  child:
                      Text('${item.price.toStringAsPrecision(2)} SR').styled()))
        ],
      ),
    );
  }
}
