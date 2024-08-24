import 'package:flutter/material.dart';


// ignore: must_be_immutable
class GrayContainer extends StatelessWidget {
  GrayContainer({super.key, required this.imag});
  String imag;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(10, 20),
          ),
        ],
      ),
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset(
          imag,
        ),
      ),
    );
  }
}
