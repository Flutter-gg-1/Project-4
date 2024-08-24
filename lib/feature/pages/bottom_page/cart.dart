import 'package:flutter/material.dart';
import '../../../core/all_file.dart';

class PersonCart extends StatelessWidget {
  const PersonCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.colorWhite,
      body: Column(
        children: [
          const SizedBox(height: 100),
          Image(
            image: const AssetImage('assets/images/intro/int1.png'),
            width: getScreenSize(context).width / 2 + 150,
          ),
          const SizedBox(height: 30),
          Text(
            'Device Shop Buying and selling electronic devices',
            style: TextStyle(
              fontSize: getScreenSize(context).width / 20,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
