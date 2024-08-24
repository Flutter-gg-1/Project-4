import 'package:flutter/material.dart';
import 'package:shopping/global.dart';
import 'package:shopping/widget/product_view.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool isLoading;
  @override
  void initState() {
    isLoading = true;
    setState(() {});

    Future.delayed(const Duration(seconds: 5), () {
      isLoading = false;
      setState(() {});
    });
    super.initState();
  }

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
                    child: isLoading
                        ? Shimmer(
                            child: const Center(
                            child: Text("Loading"),
                          ))
                        : TabBarView(
                            children: [
                              ProductView(products: cloths),
                              ProductView(products: electronics),
                              ProductView(products: schools),
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
