import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../extensions/color_ext.dart';

class CartEmptyAlertView extends StatelessWidget {
  const CartEmptyAlertView({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: C.primary,
      icon: const Icon(CupertinoIcons.exclamationmark_triangle_fill,
          size: 40, color: C.text),
      title: const Text('Oops!').styled(size: 24, weight: FontWeight.w700),
      content: const Text(
              'Your Cart is Empty. Go back to browse our amazing collection')
          .styled(color: C.text.withOpacity(0.7)),
      actions: [
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: C.accent,
                  padding: EdgeInsets.all(16),
                ),
                child: Text('Dismiss').styled(weight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
