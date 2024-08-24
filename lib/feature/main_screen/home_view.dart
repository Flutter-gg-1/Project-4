import 'package:flutter/material.dart';
import '../../core/all_file.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        myPageViewShopping_1(),
        const SizedBox(height: 10),
        myPageViewShopping_2(),
      ],
    );
  }
}
