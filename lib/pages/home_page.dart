import 'package:flutter/material.dart';
import 'package:shopping_app/shared.dart';
import 'package:shopping_app/widgets/home_containers_widget.dart';
import 'package:shopping_app/widgets/my_app_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(),
      drawer: const Drawer(),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            const TabBar(
              dividerColor: Colors.transparent,
              tabs: [
                Tab(text: "All"),
                Tab(text: "Apple"),
                Tab(text: "Asus"),
                Tab(text: "Huawei"),
                Tab(text: "MSI"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: HomeContainersWidget(laptops: laptops),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: HomeContainersWidget(
                      laptops: laptops
                          .where((laptop) => laptop.brand == "Apple")
                          .toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: HomeContainersWidget(
                      laptops: laptops
                          .where((laptop) => laptop.brand == "Asus")
                          .toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: HomeContainersWidget(
                      laptops: laptops
                          .where((laptop) => laptop.brand == "Huawei")
                          .toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: HomeContainersWidget(
                      laptops: laptops
                          .where((laptop) => laptop.brand == "MSI")
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
