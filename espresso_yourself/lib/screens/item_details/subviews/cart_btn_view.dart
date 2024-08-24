import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/mock_data.dart';
import 'package:flutter/material.dart';
import '../../../extensions/color_ext.dart';
import '../../../model/menu_item.dart';
import '../../../reusable_components/custom_stepper_view.dart';

class CartBtnView extends StatefulWidget {
  const CartBtnView({super.key, required this.item});

  final MenuItem item;

  @override
  State<CartBtnView> createState() => _CartBtnViewState();
}

class _CartBtnViewState extends State<CartBtnView> {
  final user = MockData().user;
  int _currentValue = 1;

  void _increment() => setState(() =>
      _currentValue = _currentValue < 9 ? _currentValue + 1 : _currentValue);

  void _decrement() => setState(() =>
      _currentValue = _currentValue > 1 ? _currentValue - 1 : _currentValue);

  void _addToCart() {
    user.cart.addItem(item: widget.item, quantity: _currentValue);
  }

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
            onPressed: _addToCart,
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
