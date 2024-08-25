import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/globals/data.dart';
import 'package:shopping_app/models/product.dart';
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
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            alignment: Alignment.centerLeft,
            child: Text("Welcome back, ${widget.user.name}",style: GoogleFonts.poppins(color: mainColor, fontSize: 20)),
          ),
          Divider(thickness: 0,color: mainColor),
          Flexible(
            child: ListView(
              children: [
                const SectionTitle(title: 'Top Products'),
                Column(
                  children: List.generate(2, (colIndex) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(2, (rowIndex){
                        rowIndex = rowIndex == 0 ? 2*colIndex : (2*colIndex)+1;
                        List<Product> temp = products.sublist(0);
                        temp.sort((product1,product2)=>product1.stars.compareTo(product2.stars));
                        temp = temp.reversed.toList();
                        return ProductCard(product: temp.sublist(0,4)[rowIndex],user: widget.user);
                      }),
                    );
                  }),
                ),
                const SizedBox(height: 30,),
                const SectionTitle(title: "Last Offers"),
                Column(
                  children: List.generate(2, (colIndex) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(2, (rowIndex){
                        rowIndex = rowIndex == 0 ? 2*colIndex : (2*colIndex)+1;
                        List<Product> temp = products.sublist(0);
                        temp = temp.where((product) => product.offer!='no').toList();
                        return ProductCard(product: temp.sublist(0,4)[rowIndex],user: widget.user);
                      }),
                    );
                  }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}