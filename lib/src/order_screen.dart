import 'package:coffeshop_app/widget/order/custom_bottom_sheet.dart';
import 'package:coffeshop_app/widget/order/order_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Order extends StatefulWidget {
  final double price;
  final String title, imagePath;
  const Order(
      {super.key,
      required this.price,
      required this.title,
      required this.imagePath});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int quantity = 1;
  double total = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF2D7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF2D7),
        title: Text(
          'Order',
          style: GoogleFonts.sora(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  widget.imagePath,
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                widget.title,
                style: GoogleFonts.sora(
                    color: const Color.fromARGB(255, 66, 63, 63),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: const Divider(
                  color: Color(0xFFFFFBF5),
                  thickness: 4,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              OrderDetails(
                price: widget.price,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const CustomBottomSheet()
            ],
          ),
        ),
      ),
    );
  }
}
