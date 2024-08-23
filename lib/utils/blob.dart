import 'package:flutter/material.dart';

class Blob extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(29.1, -30.2);
    path_0.cubicTo(29.7, -28.5, 16.6, -14.2, 20.8, 4.2);
    path_0.cubicTo(24.9, 22.6, 46.3, 45.1, 45.7, 46.1);
    path_0.cubicTo(45.1, 47, 22.6, 26.4, 3.9, 22.5);
    path_0.cubicTo(-14.8, 18.6, -29.6, 31.5, -33.8, 30.5);
    path_0.cubicTo(-38, 29.6, -31.6, 14.8, -35.1, -3.5);
    path_0.cubicTo(-38.6, -21.8, -52, -43.6, -47.8, -45.3);
    path_0.cubicTo(-43.6, -47, -21.8, -28.7, -3.8, -24.9);
    path_0.cubicTo(14.2, -21.2, 28.5, -31.9, 29.1, -30.2);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffF2F4F8).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
