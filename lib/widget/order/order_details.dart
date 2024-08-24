
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class OrderDetails extends StatefulWidget {
  final double price;
  const OrderDetails({
    super.key, required this.price,
  });

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Quantity',
              style: GoogleFonts.caveat(
                  fontSize: 25,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '$quantity+$quantity(Promo)',
              style: GoogleFonts.caveat(
                  fontSize: 25,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Price',
              style: GoogleFonts.caveat(
                  fontSize: 25,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '${widget.price * quantity} RS',
              style: GoogleFonts.caveat(
                  fontSize: 25,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Add more?',
              style: GoogleFonts.signika(
                  fontSize: 25,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {
                  quantity > 1
                      ? setState(() {
                          quantity--;
                        })
                      : setState(() {
                          quantity = 1;
                        });
                },
                icon: const Icon(Iconsax.minus_bold)),
            Text(
              '$quantity',
              style: GoogleFonts.caveat(
                  fontSize: 25,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    quantity++;
                  });
                },
                icon: const Icon(Iconsax.add_bold))
          ],
        ),
      ],
    );
  }
}
