import 'package:flutter/material.dart';

class RPSCustomPainter2 extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(216.714,154.286);
    path_0.cubicTo(59.7084,149.492,6.81894,169.431,0,180);
    path_0.lineTo(0,0);
    path_0.lineTo(459,0);
    path_0.lineTo(459,135.562);
    path_0.cubicTo(443.657,143.8,373.721,159.079,216.714,154.286);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff9B74A9).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}