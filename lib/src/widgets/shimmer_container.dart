import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/src/helper/colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

//return shimmer new collection container in home screen
Widget shimmerCollectionsContainer() {
  return Shimmer(
    duration: const Duration(seconds: 3),
    colorOpacity: 0.7,
    direction: const ShimmerDirection.fromRTLB(),
    child: Container(
        height: 420,
        width: 300,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 192, 192, 192),
          borderRadius: BorderRadius.circular(20),
        )),
  );
}
