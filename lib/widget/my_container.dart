import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget child;
  final double height;
  const MyContainer({super.key, required this.child, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: child,
    );
  }
}
