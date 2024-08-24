import 'package:flutter/material.dart';

import 'data/global_variabels.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = bgProductDetailsView;
    path = Path();
    path.lineTo(size.width * 0.41, -0.33);
    path.cubicTo(size.width * 0.51, -0.21, size.width * 0.56, -0.03,
        size.width * 0.53, size.height * 0.14);
    path.cubicTo(size.width / 2, size.height * 0.3, size.width * 0.39,
        size.height * 0.46, size.width * 0.27, size.height * 0.49);
    path.cubicTo(size.width * 0.14, size.height * 0.51, 0, size.height * 0.4,
        -0.12, size.height * 0.32);
    path.cubicTo(-0.25, size.height * 0.24, -0.37, size.height * 0.18, -0.42,
        size.height * 0.06);
    path.cubicTo(-0.48, -0.05, -0.47, -0.23, -0.39, -0.34);
    path.cubicTo(-0.31, -0.45, -0.16, -0.51, 0, -0.51);
    path.cubicTo(size.width * 0.15, -0.51, size.width * 0.31, -0.45,
        size.width * 0.41, -0.33);
    path.cubicTo(size.width * 0.41, -0.33, size.width * 0.41, -0.33,
        size.width * 0.41, -0.33);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
