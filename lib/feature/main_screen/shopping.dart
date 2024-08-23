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
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              myPageViewShopping_1(),
              const SizedBox(height: 10),
              myPageViewShopping_2(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomIndex,
        onTap: (index) {
          setState(() {
            bottomIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: '',
          ),
        ],
      ),
    );
  }
}
