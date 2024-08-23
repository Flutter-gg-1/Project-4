import 'package:espresso_yourself/extensions/string_ext.dart';
import 'package:flutter/material.dart';

import '../../extensions/color_ext.dart';
import '../../extensions/image_ext.dart';

class CategoryTabView extends StatelessWidget {
  const CategoryTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              indicator: BoxDecoration(
                color: Colors.transparent, // Ensures no underline is visible
              ),
              labelColor: C.text,
              indicatorColor: Colors.transparent,
              labelStyle: TextStyle(
                fontFamily: 'Pliego',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              dividerColor: Colors.transparent,
              tabs: [
                Tab(text: 'Classic coffee'),
                Tab(text: 'Coffee beans'),
                Tab(text: 'Desserts'),
              ],
            ),
            SizedBox(
              height: 400,
              child: TabBarView(
                children: [
                  _TabGridView(),
                  _TabGridView(),
                  _TabGridView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TabGridView extends StatelessWidget {
  const _TabGridView();

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.6),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        SizedBox(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: const BoxDecoration(color: C.secondary),
                  child: AspectRatio(
                      aspectRatio: 1, child: const Text('Hello').styled()),
                ),
              ),
              const Align(
                alignment: Alignment.topCenter,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image(
                    image: Img.almond,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Text('Hello'),
        const Text('Hello'),
      ],
    );
  }
}
