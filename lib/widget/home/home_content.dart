import 'package:coffeshop_app/widget/home/home_lower_section.dart';
import 'package:coffeshop_app/widget/home/home_upper_section.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UpperSection(),
        LowerSection(),
      ],
    );
  }
}
