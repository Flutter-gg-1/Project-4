import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/mock_data.dart';
import 'package:espresso_yourself/screens/cart/cart_empty_alert_view.dart';
import 'package:espresso_yourself/screens/cart/cart_list_view.dart';
import 'package:espresso_yourself/screens/payment/payment_screen.dart';
import 'package:flutter/material.dart';
import '../../extensions/color_ext.dart';
import '../../model/cart.dart';
import '../../model/menu_item.dart';
import '../../model/user.dart';
import '../../reusable_components/background_img_decoration.dart';
import '../../reusable_components/buttons/custom_back_btn_view.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  User user = MockData().user;

  void _checkOutTapped(BuildContext context) {
    if (user.cartItems.isEmpty) {
      _showEmptyCartAlert(context);
    } else {
      _navigateToPayment(context);
    }
  }

  void _showEmptyCartAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const CartEmptyAlertView();
      },
    );
  }

  void _navigateToPayment(BuildContext context) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const PaymentScreen()));

  void _removeItem(BuildContext context, CartItem cartItem) {
    setState(() {
      user.cartItems.removeWhere((cartItem) => cartItem.id == cartItem.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          const BackgroundImgDecoration(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const _HeaderView(),
                  Expanded(
                    child: ListView(
                      children: user.cartItems
                          .map((cartItem) => CartListView(
                                cartItem: cartItem,
                                removeItem: _removeItem,
                              ))
                          .toList(),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: C.accent,
                          ),
                          onPressed: () => _checkOutTapped(context),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: const Text('Checkout')
                                .styled(size: 24, weight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HeaderView extends StatelessWidget {
  const _HeaderView();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomBackBtnView(context: context),
        const Text('Cart').styled(size: 20, weight: FontWeight.w700),
        const SizedBox(width: 60),
      ],
    );
  }
}
