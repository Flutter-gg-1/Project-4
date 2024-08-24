import 'package:flutter/material.dart';
import '../../../core/all_file.dart';

class Computers extends StatelessWidget {
  const Computers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Computers'),
      ),
      body: Center(
        child: Column(
          children: [
            myContainer(
                imagePath: 'assets/images/dev/hp15s.png',
                width: 1.3,
                height: 2.5,
                fit: null),
            SizedBox(
              height: getScreenSize(context).height / 15,
            ),
            myContainer(
                imagePath: 'assets/images/dev/hp15s.png',
                width: 2.2,
                height: 3.5),
          ],
        ),
      ),
    );
  }
}
