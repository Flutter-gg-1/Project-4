import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/mock_data.dart';
import 'package:espresso_yourself/model/cart.dart';
import 'package:espresso_yourself/model/menu_item.dart';
import 'package:espresso_yourself/reusable_components/badge_view.dart';
import 'package:espresso_yourself/reusable_components/buttons/circle_btn_container_view.dart';
import 'package:espresso_yourself/reusable_components/buttons/custom_back_btn_view.dart';
import 'package:espresso_yourself/reusable_components/shapes/item_detail_shape.dart';
import 'package:espresso_yourself/screens/cart/cart_screen.dart';
import 'package:espresso_yourself/screens/item_details/subviews/cart_btn_view.dart';
import 'package:espresso_yourself/screens/item_details/subviews/description_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../extensions/color_ext.dart';
import '../../model/user.dart';
import '../../reusable_components/background_img_decoration.dart';

class ItemDetailsScreen extends StatefulWidget {
  ItemDetailsScreen({super.key, required this.item});

  final MenuItem item;

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  User user = MockData().user;

  void _addToCart(int quantity) {
    user.cartItems.add(CartItem(item: widget.item, quantity: quantity));
    numCartItems();
    setState(() {});
  }

  int numCartItems() {
    var count = 0;
    for (var item in user.cartItems) {
      count += item.quantity;
    }
    return count;
  }

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
                _HeaderView(numCartItems: numCartItems(), user: user),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        children: [
                          _ImgView(item: widget.item),
                          DescriptionView(item: widget.item),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: CartBtnView(addToCart: _addToCart),
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
  _HeaderView({required this.numCartItems, required this.user});

  final int numCartItems;
  User user;

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
        BadgeView(
          value: numCartItems,
          child: InkWell(
            onTap: () => _navigateToCart(context),
            child: const CircleBtnContainerView(
              size: 60,
              child: Icon(CupertinoIcons.cart_fill, size: 35, color: C.text),
            ),
          ),
        ),
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
