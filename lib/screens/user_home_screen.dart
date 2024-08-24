import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/globals/data.dart';
import 'package:shopping_app/models/user.dart';
import 'package:shopping_app/widgets/product_card.dart';
import 'package:shopping_app/widgets/section_title.dart';

class UserHomeScreen extends StatefulWidget {
  final User user;
  const UserHomeScreen({super.key, required this.user});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            alignment: Alignment.centerLeft,
            child: Text("Welcome back, ${widget.user.name}",style: GoogleFonts.poppins(color: mainColor, fontSize: 20)),
          ),
          Divider(thickness: 0,color: mainColor),
          const SizedBox(height: 20),
          const SectionTitle(title: 'Top Products'),
          Column(
            children: List.generate(products.length ~/ 2, (colIndex) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(products.length ~/ 2, (rowIndex) {
                  rowIndex = rowIndex == 0 ? colIndex * 2 : (colIndex * 2) + 1;
                  return ProductCard(product: products[rowIndex]);
                }),
              );
            }),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}