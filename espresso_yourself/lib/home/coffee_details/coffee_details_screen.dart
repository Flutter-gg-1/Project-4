import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/model/menu_item.dart';
import 'package:espresso_yourself/reusable_components/circle_btn_container_view.dart';
import 'package:espresso_yourself/reusable_components/item_detail_shape.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../extensions/color_ext.dart';
import '../../extensions/image_ext.dart';
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(item.title).styled(size: 24),
                              InkWell(
                                onTap: () => (),
                                child: const CircleBtnContainerView(
                                  size: 40,
                                  child: Icon(
                                    CupertinoIcons.heart_fill,
                                    color: C.text,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          _DescriptionView(item: item),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => (),
                      child: const Text('Add to Cart'),
                    )
                  ],
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

  void _navigateBack(BuildContext context) => Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
            onTap: () => _navigateBack(context),
            child: const CircleBtnContainerView(
                size: 60,
                child:
                    Icon(CupertinoIcons.arrow_left, size: 35, color: C.text))),
        const Text('Item Details').styled(size: 20, weight: FontWeight.w700),
        InkWell(
            onTap: () => _navigateBack(context),
            child: const CircleBtnContainerView(
                size: 60,
                child:
                    Icon(CupertinoIcons.cart_fill, size: 35, color: C.text))),
      ],
    );
  }
}

class _ImgView extends StatelessWidget {
  _ImgView({required this.item});

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

class _DescriptionView extends StatelessWidget {
  const _DescriptionView({required this.item});

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Container(
        decoration: BoxDecoration(
          color: C.primary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text('Details').styled(),
                  const Spacer(),
                  Text(item.rating.toStringAsPrecision(2)).styled(),
                  const SizedBox(width: 8),
                  const Icon(CupertinoIcons.star_fill, color: C.text)
                ],
              ),
              const Divider(),
              Text(item.description).styled(
                align: TextAlign.start,
                color: C.text.withOpacity(0.5),
                lineLimit: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
