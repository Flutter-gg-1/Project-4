import 'package:flutter/material.dart';
import '../../../core/all_file.dart';

class PersonCart extends StatelessWidget {
  const PersonCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: MyColors.colorWhite,
        height: 300,
        child: const Image(image: AssetImage('assets/images/empty.png')),
      ),
    );
  }
}
