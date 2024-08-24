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
            SizedBox(height: 30),
            TabBar(tabs: [Text("Food"), Text("Drinks"), Text("T-Shirts"),Text("Electronics")]),
            Expanded(
              child: TabBarView(
                children: List.generate(sections.length, (index) {
                  return ProductsView(
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