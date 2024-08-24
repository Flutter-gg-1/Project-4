import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../extensions/color_ext.dart';

class PaymentAlertView extends StatelessWidget {
  const PaymentAlertView({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(CupertinoIcons.exclamationmark_triangle_fill,
          size: 32, color: C.accent),
      title: const Text('Invalid Card Entry'),
      content: const Text(
          'Please ensure all card details are filled out correctly.'),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          style: ElevatedButton.styleFrom(
            backgroundColor: C.primary,
            padding: EdgeInsets.all(16),
          ),
          child: Text('Dismiss').styled(weight: FontWeight.w700),
        ),
      ],
    );
  }
}
