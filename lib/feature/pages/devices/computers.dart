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
        child: SingleChildScrollView(
          child: Column(
            children: [
              myContainer(
                  imagePath: 'assets/images/dev/hp15s.png',
                  width: 1.3,
                  height: 2.79,
                  fit: null),
              SizedBox(height: getScreenSize(context).height / 45),
              const Text(
                'ComputersComputersComputersComputersComputersComputersComputersComputersComputersComputers',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getScreenSize(context).height / 5,
              ),
              myContainer(
                  imagePath: 'assets/images/dev/hp15s.png',
                  width: 1.3,
                  height: 2.79,
                  fit: null),
            ],
          ),
        ),
      ),
    );
  }
}
