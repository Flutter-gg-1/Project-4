import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/globals/data.dart';
import 'package:shopping_app/models/user.dart';
import 'package:shopping_app/widgets/products_view.dart';

class CategoriesScreen extends StatefulWidget {
  final User user;
  const CategoriesScreen({super.key, required this.user});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  int currentSection = 0;
  List<String> sections = ['Food', 'Drinks', 'T-Shirts', 'Electronics'];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: DefaultTabController(
        length: sections.length,
        child: Column(
          children: [
            const SizedBox(height: 30),
            TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              labelStyle: TextStyle(color: mainColor),
              indicatorColor: mainColor,
              labelPadding: const EdgeInsets.symmetric(vertical: 10),
              onTap: (value) => setState(() {currentSection=value;}),
              tabs: List.generate(sections.length, (index){
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: currentSection==index ? thirdColor : Colors.transparent),
                  child: Text(sections[index], style: GoogleFonts.poppins(fontWeight: FontWeight.w500))
                );
              }),
            ),
            Expanded(
              child: TabBarView(
                children: List.generate(sections.length, (index) {
                  return ProductsView(
                    user: widget.user,
                    section: sections[index],
                    sectionProducts: products.where((product) => product.section == sections[index]).toList()
                  );
                })
              ),
            )
          ],
        )
      ),
    );
  }
}