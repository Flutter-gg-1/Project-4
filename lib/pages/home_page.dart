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
        length: 5, // Number of tabs
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
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: HomeContainersWidget(laptops: laptops),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: HomeContainersWidget(
                        laptops: laptops
                            .where((laptop) => laptop.brand == "Apple")
                            .toList(),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: HomeContainersWidget(
                        laptops: laptops
                            .where((laptop) => laptop.brand == "Asus")
                            .toList(),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: HomeContainersWidget(
                        laptops: laptops
                            .where((laptop) => laptop.brand == "Huawei")
                            .toList(),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: HomeContainersWidget(
                        laptops: laptops
                            .where((laptop) => laptop.brand == "MSI")
                            .toList(),
                      ),
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
