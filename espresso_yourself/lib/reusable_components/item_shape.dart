import 'package:flutter/material.dart';

class ItemShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xff9d8c7f).withOpacity(1);
    path = Path();
    path.lineTo(size.width, size.height * 0.11);
    path.cubicTo(size.width, size.height * 0.15, size.width, size.height * 0.19,
        size.width, size.height * 0.23);
    path.cubicTo(size.width, size.height * 0.3, size.width, size.height * 0.37,
        size.width, size.height * 0.44);
    path.cubicTo(size.width, size.height * 0.48, size.width, size.height * 0.54,
        size.width * 0.97, size.height * 0.56);
    path.cubicTo(size.width * 0.94, size.height * 0.57, size.width * 0.91,
        size.height * 0.57, size.width * 0.87, size.height * 0.58);
    path.cubicTo(size.width * 0.84, size.height * 0.58, size.width * 0.81,
        size.height * 0.58, size.width * 0.78, size.height * 0.58);
    path.cubicTo(size.width * 0.68, size.height * 0.59, size.width * 0.61,
        size.height * 0.65, size.width * 0.58, size.height * 0.75);
    path.cubicTo(size.width * 0.58, size.height * 0.78, size.width * 0.57,
        size.height * 0.81, size.width * 0.57, size.height * 0.84);
    path.cubicTo(size.width * 0.57, size.height * 0.88, size.width * 0.57,
        size.height * 0.92, size.width * 0.56, size.height * 0.96);
    path.cubicTo(size.width * 0.54, size.height, size.width / 2, size.height,
        size.width * 0.47, size.height);
    path.cubicTo(size.width * 0.39, size.height, size.width * 0.3, size.height,
        size.width * 0.22, size.height);
    path.cubicTo(size.width * 0.15, size.height, size.width * 0.08, size.height,
        size.width * 0.04, size.height * 0.94);
    path.cubicTo(
        0, size.height * 0.89, 0, size.height * 0.83, 0, size.height * 0.77);
    path.cubicTo(
        0, size.height * 0.67, 0, size.height * 0.55, 0, size.height * 0.43);
    path.cubicTo(
        0, size.height / 3, 0, size.height * 0.26, 0, size.height * 0.18);
    path.cubicTo(0, size.height * 0.16, 0, size.height * 0.14,
        size.width * 0.01, size.height * 0.11);
    path.cubicTo(size.width * 0.02, size.height * 0.07, size.width * 0.06,
        size.height * 0.04, size.width * 0.1, size.height * 0.02);
    path.cubicTo(
        size.width * 0.14, 0, size.width * 0.18, 0, size.width * 0.23, 0);
    path.cubicTo(
        size.width * 0.29, 0, size.width * 0.36, 0, size.width * 0.43, 0);
    path.cubicTo(
        size.width * 0.54, 0, size.width * 0.66, 0, size.width * 0.77, 0);
    path.cubicTo(size.width * 0.83, 0, size.width * 0.87, 0, size.width * 0.91,
        size.height * 0.02);
    path.cubicTo(size.width * 0.95, size.height * 0.04, size.width * 0.98,
        size.height * 0.07, size.width, size.height * 0.11);
    path.cubicTo(size.width, size.height * 0.11, size.width, size.height * 0.11,
        size.width, size.height * 0.11);
    path.cubicTo(size.width, size.height * 0.11, size.width, size.height * 0.11,
        size.width, size.height * 0.11);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
