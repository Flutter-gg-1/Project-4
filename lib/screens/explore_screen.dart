import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/category_card.dart';
import 'package:shopping_app/widgets/item_pageview.dart';
import '../utils/data/items_data.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int categoryIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(clipBehavior: Clip.none, children: [
      SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'assets/images/background-main.jpg',
          fit: BoxFit.cover,
        ),
      ),
      if (categoryIndex != -1)
        PageView(
          children: [
           ItemPageview(item: items[categoryIndex],),
           ItemPageview(item: items[categoryIndex+1],),
           ItemPageview(item: items[categoryIndex+2],),
          ],
        )
      else
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  categoryIndex = 0;
                });
              },
              child: const CategoryCard(
                  catName: 'Clothes',
                  catImagePath: 'assets/images/clothing-cat.png'),
            ),
            InkWell(
              onTap: () {
                 setState(() {
                  categoryIndex = 3;
                });
              },
              child: const CategoryCard(
                  catName: 'Electronics',
                  catImagePath: 'assets/images/devices-cat.png'),
            ),
          ],
        ),
    ]));
  }
}
