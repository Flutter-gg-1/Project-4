import 'package:flutter/material.dart';

import '../../extensions/color_ext.dart';

class CircleBtnContainerView extends StatelessWidget {
  const CircleBtnContainerView({
    super.key,
    required this.size,
    required this.child,
    this.hasBorder = false,
  });

  final double size;
  final Widget child;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: !hasBorder ? C.accent : Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: hasBorder ? C.accent : Colors.transparent,
          width: hasBorder ? 4 : 0,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
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
