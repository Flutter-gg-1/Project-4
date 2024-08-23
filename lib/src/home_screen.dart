import 'package:flutter/material.dart';
import 'package:shopping/global.dart';
import 'package:shopping/widget/product_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 250,
            child: Image.asset("assets/images/banner.jpg"),
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
                      Tab(child: Text("cloth")),
                      Tab(child: Text("electronics")),
                      Tab(child: Text("schools")),
                    ],
                  ),
                  Flexible(
                    child: TabBarView(
                      children: [
                        ProductView(products: electronic),
                        ProductView(products: electronic),
                        ProductView(products: electronic),
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
