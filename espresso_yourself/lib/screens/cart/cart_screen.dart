import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/mock_data.dart';
import 'package:espresso_yourself/screens/payment/payment_screen.dart';
import 'package:flutter/material.dart';
import '../../extensions/color_ext.dart';
import '../../reusable_components/background_img_decoration.dart';
import '../../reusable_components/buttons/custom_back_btn_view.dart';
import '../../reusable_components/list_item_view.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final user = MockData().user;

  void _navigateToPayment(BuildContext context) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const PaymentScreen()));

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
                      children: user.cart.items
                          .map((item) =>
                              ListItemView(item: item.$1, quantity: item.$2))
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
                          onPressed: () => _navigateToPayment(context),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('Checkout')
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
        SizedBox(width: 60),
      ],
    );
  }
}
