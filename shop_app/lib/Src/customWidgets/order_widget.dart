import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';

class OrderWidget extends StatelessWidget {
  final String name;
  final String price;
  final String imgUrl;
  const OrderWidget(
      {super.key,
      required this.name,
      required this.price,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
            color: Color(0xff9baa99),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              AnimatedRatingStars(
                onChanged: (double rating) {},
                customFilledIcon: Icons.star,
                starSize: 16,
                emptyColor: Colors.white,
                customHalfFilledIcon: Icons.star_border,
                customEmptyIcon: Icons.star_border,
                readOnly: true,
              ),
              Text(
                price,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          const Expanded(child: SizedBox(width: 100)),
          Image.asset(imgUrl)
        ]));
  }
}
