
import 'package:flutter/material.dart';
import 'package:shopping_app/src/helper/colors.dart';

//draw shape
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(57.2, -58.7);
    path_0.cubicTo(72, -42.4, 80.4, -21.2, 80.3, -0.1);
    path_0.cubicTo(80.1, 21, 71.5, 41.9, 56.7, 57.1);
    path_0.cubicTo(41.9, 72.2, 21, 81.5, -0.9, 82.4);
    path_0.cubicTo(-22.7, 83.3, -45.4, 75.7, -60.3, 60.6);
    path_0.cubicTo(-75.2, 45.4, -82.2, 22.7, -81.2, 1);
    path_0.cubicTo(-80.2, -20.7, -71.1, -41.4, -56.2, -57.7);
    path_0.cubicTo(-41.4, -74, -20.7, -86, 0.3, -86.3);
    path_0.cubicTo(21.2, -86.5, 42.4, -75, 57.2, -58.7);
    path_0.close();

    Paint paintFill = Paint()..style = PaintingStyle.fill;
    paintFill.color = ColorsConstant.beige.withOpacity(1.0);
    canvas.drawPath(path_0, paintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
