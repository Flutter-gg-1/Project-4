import 'package:coffeshop_app/src/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class CoffeOption extends StatelessWidget {
  const CoffeOption({
    super.key,
    required this.title,
    required this.imagePath,
    required this.price,
  });
  final String title, imagePath;
  final double price;
  @override
  Widget build(BuildContext context) {
    FlipCardController controller = FlipCardController();
    return FlipCard(
        onTapFlipping: true,
        frontWidget: Container(
          width: 150,
          height: 210,
          margin: const EdgeInsets.only(top: 20, right: 25),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: const Color(0xFFFFFBF5),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    imagePath,
                    height: 70,
                    width: 100,
                  )),
              Text(
                title,
                style: GoogleFonts.sora(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Text('With Chocolate'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$price RS',
                    style: GoogleFonts.sora(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  Order(price: price,title: title,imagePath: imagePath,),
                          ),
                        );
                      },
                      icon: const Icon(
                        Iconsax.add_circle_outline,
                        color: Colors.brown,
                      ))
                ],
              ),
            ],
          ),
        ),
        backWidget: Container(
            width: 150,
            height: 210,
            margin: const EdgeInsets.only(top: 20, right: 25),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: const Color(0xFFFFFBF5),
                borderRadius: BorderRadius.circular(16)),
            child: Text(
                'A $title is an approximatelly 150 ml (5oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk')),
        controller: controller,
        rotateSide: RotateSide.bottom);
  }
}
