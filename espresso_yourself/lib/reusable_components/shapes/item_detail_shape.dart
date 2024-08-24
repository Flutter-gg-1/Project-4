import 'package:flutter/material.dart';

class ItemDetailShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xFF9E8D82).withOpacity(0.5);
    path = Path();
    path.lineTo(size.width * 0.98, size.height * 0.27);
    path.cubicTo(size.width, size.height * 0.28, size.width, size.height * 0.3,
        size.width, size.height * 0.34);
    path.cubicTo(size.width, size.height * 0.35, size.width, size.height * 0.36,
        size.width, size.height * 0.38);
    path.cubicTo(size.width, size.height * 0.47, size.width, size.height * 0.58,
        size.width, size.height * 0.68);
    path.cubicTo(size.width, size.height * 0.72, size.width, size.height * 0.76,
        size.width, size.height * 0.81);
    path.cubicTo(size.width, size.height * 0.85, size.width, size.height * 0.89,
        size.width * 0.98, size.height * 0.92);
    path.cubicTo(size.width * 0.96, size.height * 0.96, size.width * 0.92,
        size.height, size.width * 0.88, size.height);
    path.cubicTo(size.width * 0.77, size.height, size.width * 0.68, size.height,
        size.width * 0.52, size.height);
    path.cubicTo(size.width * 0.42, size.height, size.width * 0.3, size.height,
        size.width / 5, size.height);
    path.cubicTo(size.width * 0.14, size.height, size.width * 0.09, size.height,
        size.width * 0.05, size.height * 0.97);
    path.cubicTo(
        0, size.height * 0.92, 0, size.height * 0.88, 0, size.height * 0.83);
    path.cubicTo(
        0, size.height * 0.68, 0, size.height * 0.36, 0, size.height * 0.17);
    path.cubicTo(0, size.height * 0.14, 0, size.height * 0.12,
        size.width * 0.01, size.height * 0.09);
    path.cubicTo(size.width * 0.02, size.height * 0.08, size.width * 0.03,
        size.height * 0.06, size.width * 0.04, size.height * 0.05);
    path.cubicTo(size.width * 0.06, size.height * 0.02, size.width * 0.09,
        size.height * 0.01, size.width * 0.12, 0);
    path.cubicTo(
        size.width * 0.14, 0, size.width * 0.15, 0, size.width * 0.17, 0);
    path.cubicTo(
        size.width * 0.3, 0, size.width * 0.53, 0, size.width * 0.67, 0);
    path.cubicTo(size.width * 0.69, 0, size.width * 0.72, 0, size.width * 0.72,
        size.height * 0.03);
    path.cubicTo(size.width * 0.73, size.height * 0.05, size.width * 0.73,
        size.height * 0.07, size.width * 0.73, size.height * 0.1);
    path.cubicTo(size.width * 0.74, size.height * 0.14, size.width * 0.74,
        size.height * 0.18, size.width * 0.77, size.height / 5);
    path.cubicTo(size.width * 0.79, size.height * 0.24, size.width * 0.83,
        size.height / 4, size.width * 0.87, size.height / 4);
    path.cubicTo(size.width * 0.91, size.height * 0.26, size.width * 0.95,
        size.height * 0.26, size.width * 0.98, size.height * 0.27);
    path.cubicTo(size.width * 0.98, size.height * 0.27, size.width * 0.98,
        size.height * 0.27, size.width * 0.98, size.height * 0.27);
    path.cubicTo(size.width * 0.98, size.height * 0.27, size.width * 0.98,
        size.height * 0.27, size.width * 0.98, size.height * 0.27);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
