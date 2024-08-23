import 'package:flutter/material.dart';

import '../../../../core/all_file.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(190, 160, 250, 1),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Image(
            image: const AssetImage('assets/images/intro/int2.png'),
            width: getScreenSize(context).width / 2 + 150,
          ),
          const SizedBox(height: 30),
          Text(
            'We have a special discount for the disabled',
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
