import 'package:flutter/material.dart';

class Computers extends StatelessWidget {
  const Computers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Computers'),
      ),
      body: const Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Computers'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
