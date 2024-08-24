import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String catName;
  final String catImagePath;
  const CategoryCard(
      {super.key, required this.catName, required this.catImagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.black, width: 7),
              borderRadius: BorderRadius.circular(25)),
          child: Image.asset(catImagePath, height: 200, width: 200),
        ),
        Center(
          child: Text(
            catName,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Matemasie'),
          ),
        )
      ],
    );
  }
}
