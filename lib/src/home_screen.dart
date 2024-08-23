import 'package:flutter/material.dart';
import 'package:shopping/widget/product_container.dart';
import 'package:shopping/widget/product_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
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
                  TabBar(
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
                        ProductView(myWidget: ProductContainer()),
                        ProductView(myWidget: ProductContainer()),
                        ProductView(myWidget: ProductContainer()),
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
