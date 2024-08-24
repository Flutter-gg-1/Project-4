import 'package:flutter/material.dart';
import 'package:shopping_app/pages/about_us_page.dart';
import 'package:shopping_app/pages/profile_page.dart';
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
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 170,
            ),
            SizedBox(width: 250, child: Image.asset("assets/general/logo.png")),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const ProfilePage();
                }));
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff5355ca),
                ),
                child: const Center(
                    child: Text(
                  "Profile",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const AboutUsPage();
                }));
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff5355ca),
                ),
                child: const Center(
                    child: Text(
                  "about us",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
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
