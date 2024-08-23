import 'package:flutter/material.dart';
import 'package:shopping/widget/my_container.dart';
import 'package:shopping/widget/view_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 140,
            child: Placeholder(
              child: Center(
                child: Text("Welcome screen"),
              ),
            ),
          ),
          Flexible(
            child: DefaultTabController(
              initialIndex: 1,
              length: 3,
              child: Column(
                children: [
                  const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(child: Text("Bags")),
                      Tab(child: Text("Tech")),
                      Tab(child: Text("schools")),
                    ],
                  ),
                  Flexible(
                    child: TabBarView(
                      children: [
                        GridView.count(
                          crossAxisCount: 2,
                          children: List.generate(4, (index) {
                            return const Center(
                              child: ViewProduct(),
                            );
                          }),
                        ),
                        const Center(
                          child: Text("It's rainy here"),
                        ),
                        const Center(
                          child: Text("It's sunny here"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
