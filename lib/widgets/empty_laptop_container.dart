import 'package:flutter/material.dart';

class EmptyLaptopContainer extends StatelessWidget {
  const EmptyLaptopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 150,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 224, 224, 224)),
    );
  }
}
