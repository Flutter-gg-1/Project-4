import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../extensions/color_ext.dart'; // Ensure correct import

class BadgeView extends StatelessWidget {
  const BadgeView({super.key, required this.child, required this.value});

  final int value;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: -12, end: -12),
      badgeAnimation: const badges.BadgeAnimation.slide(),
      showBadge: true,
      badgeStyle: const badges.BadgeStyle(
          badgeColor: C.secondary, padding: EdgeInsets.all(10)),
      badgeContent: Text('$value',
          style: const TextStyle(
              fontFamily: 'Pliego', color: C.text, fontSize: 20)),
      child: child,
    );
  }
}
