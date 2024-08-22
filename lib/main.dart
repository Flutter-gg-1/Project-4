import 'package:flutter/material.dart';
import 'package:project_4/shopping.dart';

import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MainApp(), // Wrap your app
      ),
    );

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
