import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const SearchField({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      child: TextFormField(
        textAlign: TextAlign.left,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          filled: true,
          fillColor: const Color.fromARGB(255, 243, 240, 240),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.02,
            horizontal: screenWidth * 0.05,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          enabled: true,
        ),
      ),
    );
  }
}
