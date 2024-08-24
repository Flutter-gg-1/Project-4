import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project4/Home/prduct_page_tab.dart';

class PrductPage extends StatelessWidget {
  PrductPage({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight * 0.5,
              child: Image.asset(image, fit: BoxFit.cover),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              name,
              style: GoogleFonts.dmSerifDisplay(
                fontSize: screenHeight * 0.04,
                color: const Color(0xffF05A7E),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            TabBar(
              labelColor: const Color(0xffF05A7E),
              unselectedLabelColor: Colors.grey,
              indicatorColor: const Color(0xffF05A7E),
              tabs: [
                Tab(text: '30ml'),
                Tab(text: '50ml'),
                Tab(text: '100ml'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  PerSize('30ml', ":السعر\n١٥٠SR"),
                  PerSize('50ml', ":السعر\n٢٥٠SR"),
                  PerSize('100ml', ":السعر\n٣٥٠SR"),
                ],
              ),
            ),
            SizedBox(
              width: screenWidth * 0.9,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF05A7E),
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.007),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('تمت الاضافه للعربة'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                child: Text(
                  'اضف للعربة',
                  style: GoogleFonts.dmSerifDisplay(
                    color: Colors.white,
                    fontSize: screenHeight * 0.03,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.08),
          ],
        ),
      ),
    );
  }
}
