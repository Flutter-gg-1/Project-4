import 'package:flutter/material.dart';

import '../extensions/color_ext.dart';

class CircleBtnContainerView extends StatelessWidget {
  const CircleBtnContainerView(
      {super.key, required this.size, required this.child});

  final double size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: C.accent,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
