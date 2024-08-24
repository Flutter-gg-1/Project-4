import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../extensions/color_ext.dart';

class OrderSheetView extends StatelessWidget {
  const OrderSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Order Confirmed',
            style: TextStyle(
                fontSize: 24, color: C.text, fontWeight: FontWeight.w700),
          ),
          const Text(
            'You should receive an email confirmation soon',
            style: TextStyle(color: C.text, fontWeight: FontWeight.w700),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text('Order Number: ').styled(),
                const Text('Y12D34B').styled(),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: QrImageView(data: 'Y12D34B'),
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
