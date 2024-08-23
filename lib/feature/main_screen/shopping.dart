import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
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
        title: Text("Abu_Mukhlef's Store",
            style: TextStyle(
                fontSize: getScreenSize(context).height / 30,
                color: Colors.amber)),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: const [],
      ),
      drawer: const MyDrawer(),
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
          BottomNavigationBarItem(
            icon: IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            label: '',
          ),
        ],
      ),
    );
  }
}
