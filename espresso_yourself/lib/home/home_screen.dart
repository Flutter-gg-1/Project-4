import 'package:flutter/material.dart';

import '../extensions/image_ext.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // MARK: - Background Image
              Padding(
                padding: EdgeInsets.all(32.0),
                child: Image(image: Img.logo, fit: BoxFit.fitHeight),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
