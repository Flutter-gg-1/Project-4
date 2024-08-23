import 'dart:ui';

import 'package:flutter/material.dart';

import '../extensions/color_ext.dart';
import '../extensions/image_ext.dart';

class BackgroundImgDecoration extends StatelessWidget {
  const BackgroundImgDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: Img.bg,
          fit: BoxFit.cover,
          opacity: 0.8,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          decoration: BoxDecoration(color: C.bg.withOpacity(0.5)),
        ),
      ),
    );
  }
}
