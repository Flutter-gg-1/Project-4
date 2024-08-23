import 'package:flutter/material.dart';
import '../../core/all_file.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomIndex = 0;

  List<Widget> pagesNavigationBottomBar = const [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Device Shop",
                style: TextStyle(
                  fontSize: getScreenSize(context).height / 30,
                  color: Colors.black,
                )),
            const SizedBox(width: 25),
            const Icon(Icons.devices, color: Colors.black, size: 40),
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.support_agent,
                  color: Colors.black, size: 40)),
        ],
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          myPageViewShopping_1(),
          const SizedBox(height: 10),
          myPageViewShopping_2(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: bottomIndex,
        onTap: (index) {
          setState(() {
            bottomIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home, color: Colors.white)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined,
                    color: Colors.white)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_3_outlined, color: Colors.white)),
            label: '',
          ),
        ],
      ),
    );
  }
}
