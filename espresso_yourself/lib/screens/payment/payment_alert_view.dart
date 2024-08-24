import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../extensions/color_ext.dart';

class PaymentAlertView extends StatelessWidget {
  const PaymentAlertView({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: C.primary,
      icon: const Icon(CupertinoIcons.exclamationmark_triangle_fill,
          size: 40, color: C.text),
      title: const Text('Oops!').styled(size: 24, weight: FontWeight.w700),
      content: const Text(
              'The Entered Card Information is incorrect.\n Please make sure all fields are filled correctly.')
          .styled(color: C.text.withOpacity(0.7)),
      actions: [
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: C.accent,
                  padding: const EdgeInsets.all(16),
                ),
                child: const Text('Dismiss').styled(weight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
