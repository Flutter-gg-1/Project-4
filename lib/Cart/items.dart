import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final double containerHeight;
  final double containerWidth;

  const ProductCard({
    Key? key,
    required this.imagePath,
    required this.containerHeight,
    required this.containerWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 252, 251, 251),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              imagePath,
              scale: 4, 
            ),
          ),
          Positioned(
            top: containerHeight * 0.2,
            left: containerWidth * 0.4,
            child: const Text(
              'Luxry Perfume',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            top: containerHeight * 0.35,
            left: containerWidth * 0.4,
            child: const Text(
              'زيوت تساعد على الثبات مثل\nالمسك\nالعنبر ',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ),
          Positioned(
            top: containerHeight * 0.79,
            left: containerWidth * 0.09,
            child: const Text("الكميه : ١"),
          ),
          Positioned(
            top: containerHeight * 0.59,
            left: containerWidth * 0.4,
            child: const Text("السعر"),
          ),
          Positioned(
            top: containerHeight * 0.69,
            left: containerWidth * 0.4,
            child: const Text("350"),
          ),
          Positioned(
            top: containerHeight * 0.75,
            left: containerWidth * 0.65,
            child: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('تم حذف العنصر !'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              icon: const Icon(
                Icons.delete,
                size: 16,
                color: Colors.black,
              ),
              label: const Text(
                'Delete',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xfffcfbfb),
                elevation: 5,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 207, 212, 215)),
                ),
                shadowColor: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
