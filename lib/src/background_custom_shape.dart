import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(209.632,438);
    path_0.cubicTo(57.7571,424.392,6.5961,480.997,0,511);
    path_0.lineTo(0,0);
    path_0.lineTo(444,0);
    path_0.lineTo(444,384.845);
    path_0.cubicTo(429.159,408.233,361.508,451.608,209.632,438);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = const Color(0xff9B74A9).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}