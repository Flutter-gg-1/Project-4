import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SpecialOfferScreen extends StatelessWidget {
  const SpecialOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Special Offer'),
            content: const Text('Check our special descount this Black Friday'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
      child: ImageSlideshow(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          children: [
            Image.asset("assets/images/offer.jpg"),
            Image.asset("assets/images/sales.jpg"),
            Image.asset("assets/images/sales 2.jpg"),
          ]),
    );
  }
}
