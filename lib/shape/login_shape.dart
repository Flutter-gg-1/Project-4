
import 'dart:ui';

import 'package:flutter/material.dart';


class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(466.711,149.416);
    path_0.cubicTo(465.871,125.656,442.308,109.467,419.828,117.204);
    path_0.lineTo(398.384,124.584);
    path_0.cubicTo(375.96,132.301,351.095,126.313,334.642,109.233);
    path_0.lineTo(327.951,102.288);
    path_0.cubicTo(306.181,79.6874,274.691,69.2342,243.726,74.3295);
    path_0.lineTo(199.507,82.1454);
    path_0.cubicTo(176.503,86.2115,153.013,86.7492,129.847,83.7401);
    path_0.lineTo(108.93,81.0231);
    path_0.cubicTo(75.8662,76.7283,45.7489,59.7996,24.8929,33.7862);
    path_0.lineTo(16.1148,22.8373);
    path_0.cubicTo(0.493378,3.35291,-30.3622,8.08425,-39.4278,31.3541);
    path_0.cubicTo(-47.8768,53.0412,-44.6176,77.5456,-30.7935,96.2703);
    path_0.lineTo(-10.6836,123.509);
    path_0.cubicTo(-4.16336,132.341,-1.18002,143.291,-2.31931,154.209);
    path_0.lineTo(-49.3571,605);
    path_0.cubicTo(-51.4882,625.423,-39.2092,644.605,-19.7698,651.221);
    path_0.lineTo(62.8721,679.344);
    path_0.cubicTo(91.1326,688.961,121.254,691.82,150.819,687.692);
    path_0.lineTo(209.893,679.443);
    path_0.cubicTo(247.885,674.138,286.594,680.396,320.979,697.402);
    path_0.lineTo(361.618,717.5);
    path_0.lineTo(423.051,747.642);
    path_0.cubicTo(452.898,762.287,487.579,739.812,486.405,706.587);
    path_0.lineTo(466.711,149.416);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Colors.white.withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}