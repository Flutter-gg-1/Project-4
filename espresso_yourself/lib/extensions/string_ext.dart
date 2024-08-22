import 'package:flutter/material.dart';
import 'color_ext.dart';

extension CustomTextStyle on Text {
  Text styled({
    double size = 18,
    Color color = C.text,
    FontWeight weight = FontWeight.w400,
    TextAlign align = TextAlign.center,
  }) {
    return Text(
      data!,
      textAlign: align,
      style: TextStyle(
        fontFamily: 'Pliego',
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
