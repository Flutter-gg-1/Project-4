import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/home/coffee_details/subviews/description_view.dart';
import 'package:espresso_yourself/model/menu_item.dart';
import 'package:espresso_yourself/reusable_components/circle_btn_container_view.dart';
import 'package:espresso_yourself/reusable_components/item_detail_shape.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../extensions/color_ext.dart';
import '../../reusable_components/background_img_decoration.dart';
import '../../reusable_components/custom_stepper_view.dart';

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
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: _ButtonsView(),
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

class _ButtonsView extends StatefulWidget {
  const _ButtonsView({super.key});

  @override
  State<_ButtonsView> createState() => _ButtonsViewState();
}

class _ButtonsViewState extends State<_ButtonsView> {
  int _currentValue = 1;

  void _increment() => setState(() =>
      _currentValue = _currentValue < 9 ? _currentValue + 1 : _currentValue);

  void _decrement() => setState(() =>
      _currentValue = _currentValue > 1 ? _currentValue - 1 : _currentValue);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomStepperView(
              value: _currentValue, subtract: _decrement, add: _increment),
        ),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: C.accent,
            ),
            onPressed: () => (),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Text('Add to Cart')
                  .styled(size: 24, weight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}
