import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 20);
    path_0.cubicTo(0, 8.95431, 8.95431, 0, 20, 0);
    path_0.lineTo(315, 0);
    path_0.cubicTo(326.046, 0, 335, 8.9543, 335, 20);
    path_0.lineTo(335, 647);
    path_0.cubicTo(335, 658.046, 326.046, 667, 315, 667);
    path_0.lineTo(20, 667);
    path_0.cubicTo(8.95431, 667, 0, 658.046, 0, 647);
    path_0.lineTo(0, 487);
    path_0.lineTo(0, 399.497);
    path_0.cubicTo(0, 391.594, 4.68157, 384.431, 11.2736, 380.07);
    path_0.cubicTo(25.8814, 370.407, 49.5, 349.656, 49.5, 316.5);
    path_0.cubicTo(49.5, 282.177, 24.19, 258.336, 9.76641, 247.536);
    path_0.cubicTo(3.95228, 243.183, 0, 236.495, 0, 229.232);
    path_0.lineTo(0, 160.5);
    path_0.lineTo(0, 20);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff9BAA99).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
