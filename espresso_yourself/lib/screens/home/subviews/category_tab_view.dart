import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:espresso_yourself/reusable_components/buttons/circle_btn_container_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../extensions/color_ext.dart';
import '../../../model/menu_category.dart';
import '../../../model/menu_item.dart';
import '../../../reusable_components/shapes/item_shape.dart';
import '../../item_details/item_details_screen.dart';

class CategoryTabView extends StatelessWidget {
  const CategoryTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: DefaultTabController(
        length: MenuCategory.categories.length,
        child: Column(
          children: [
            TabBar(
                isScrollable: true,
                indicator: const BoxDecoration(
                  color: Colors.transparent, // Ensures no underline is visible
                ),
                labelColor: C.text,
                labelPadding: const EdgeInsets.symmetric(horizontal: 16),
                indicatorColor: Colors.transparent,
                labelStyle: const TextStyle(
                  fontFamily: 'Pliego',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontFamily: 'Pliego',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: C.secondary,
                ),
                dividerColor: Colors.transparent,
                tabs: MenuCategory.categories
                    .map((category) => Tab(text: category.title))
                    .toList()),
            Expanded(
              child: TabBarView(
                children: MenuCategory.categories
                    .map((category) => _TabGridView(categoryId: category.id))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _navigateToDetails(BuildContext context, MenuItem item) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => ItemDetailsScreen(item: item)));
}

class _TabGridView extends StatelessWidget {
  _TabGridView({required this.categoryId})
      : items = MenuItem.items
            .where((item) => item.categoryId == categoryId)
            .toList();

  final int categoryId;
  final List<MenuItem> items;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      children: items.map((item) {
        return Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomPaint(
                painter: ItemShape(),
                child: AspectRatio(
                  aspectRatio: 0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        Text(item.title).styled(size: 20, lineLimit: 1),
                        Text(item.description)
                            .styled(size: 14, align: TextAlign.start),
                        const Spacer(),
                        Text('${item.price.toStringAsPrecision(2)} SAR')
                            .styled(size: 24, weight: FontWeight.w700),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: AspectRatio(
                aspectRatio: 1.3,
                child: Image(
                  image: item.img,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () => _navigateToDetails(context, item),
                child: const CircleBtnContainerView(
                  size: 45,
                  child: Icon(
                    CupertinoIcons.arrow_right,
                    size: 30,
                    color: C.text,
                  ),
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
