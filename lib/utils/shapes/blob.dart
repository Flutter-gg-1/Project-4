import 'package:flutter/material.dart';

class Blob1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(34.2, -48.6);
    path_0.cubicTo(45.3, -52.9, 55.8, -45.6, 56.6, -35.6);
    path_0.cubicTo(57.3, -25.5, 48.3, -12.8, 47.9, -0.3);
    path_0.cubicTo(47.4, 12.2, 55.5, 24.5, 57, 38.4);
    path_0.cubicTo(58.4, 52.2, 53.3, 67.8, 42.7, 68.7);
    path_0.cubicTo(32.1, 69.6, 16, 55.9, 4.4, 48.2);
    path_0.cubicTo(-7.2, 40.5, -14.3, 38.9, -22.8, 36.7);
    path_0.cubicTo(-31.2, 34.6, -40.9, 31.9, -48.2, 25.7);
    path_0.cubicTo(-55.5, 19.5, -60.5, 9.7, -62.7, -1.3);
    path_0.cubicTo(-65, -12.3, -64.5, -24.6, -56.5, -29.7);
    path_0.cubicTo(-48.5, -34.7, -32.9, -32.4, -22.3, -28.3);
    path_0.cubicTo(-11.6, -24.3, -5.8, -18.4, 2.9, -23.4);
    path_0.cubicTo(11.6, -28.4, 23.2, -44.3, 34.2, -48.6);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff9EF0F0).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Blob2 extends CustomPainter {
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
