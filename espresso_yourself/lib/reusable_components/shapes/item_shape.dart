import 'package:flutter/material.dart';

class ItemShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xFF9E8D82).withOpacity(1);
    path = Path();
    path.lineTo(size.width, size.height * 0.58);
    path.cubicTo(size.width, size.height * 0.6, size.width, size.height * 0.61,
        size.width, size.height * 0.63);
    path.cubicTo(size.width, size.height * 0.68, size.width * 0.94,
        size.height * 0.68, size.width * 0.89, size.height * 0.69);
    path.cubicTo(size.width * 0.73, size.height * 0.7, size.width * 0.68,
        size.height * 0.74, size.width * 0.67, size.height * 0.9);
    path.cubicTo(size.width * 0.67, size.height * 0.93, size.width * 0.67,
        size.height * 0.96, size.width * 0.64, size.height * 0.98);
    path.cubicTo(size.width * 0.62, size.height, size.width * 0.58, size.height,
        size.width * 0.55, size.height);
    path.cubicTo(size.width * 0.43, size.height, size.width * 0.28, size.height,
        size.width * 0.17, size.height);
    path.cubicTo(size.width * 0.15, size.height, size.width * 0.13, size.height,
        size.width * 0.12, size.height);
    path.cubicTo(size.width * 0.07, size.height * 0.98, size.width * 0.03,
        size.height * 0.94, size.width * 0.01, size.height * 0.9);
    path.cubicTo(
        0, size.height * 0.86, 0, size.height * 0.83, 0, size.height * 0.78);
    path.cubicTo(
        0, size.height * 0.67, 0, size.height * 0.52, 0, size.height * 0.4);
    path.cubicTo(
        0, size.height * 0.34, 0, size.height * 0.29, 0, size.height * 0.23);
    path.cubicTo(0, size.height * 0.14, 0, size.height * 0.08,
        size.width * 0.07, size.height * 0.03);
    path.cubicTo(size.width * 0.12, 0, size.width * 0.18, 0, size.width / 4, 0);
    path.cubicTo(
        size.width * 0.31, 0, size.width * 0.37, 0, size.width * 0.44, 0);
    path.cubicTo(
        size.width * 0.56, 0, size.width * 0.69, 0, size.width * 0.8, 0);
    path.cubicTo(size.width * 0.83, 0, size.width * 0.85, 0, size.width * 0.88,
        size.height * 0.01);
    path.cubicTo(size.width * 0.93, size.height * 0.02, size.width * 0.97,
        size.height * 0.06, size.width, size.height * 0.11);
    path.cubicTo(size.width, size.height * 0.11, size.width, size.height * 0.11,
        size.width, size.height * 0.11);
    path.cubicTo(size.width, size.height * 0.16, size.width, size.height * 0.22,
        size.width, size.height * 0.27);
    path.cubicTo(size.width, size.height * 0.36, size.width, size.height * 0.49,
        size.width, size.height * 0.58);
    path.cubicTo(size.width, size.height * 0.58, size.width, size.height * 0.58,
        size.width, size.height * 0.58);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
