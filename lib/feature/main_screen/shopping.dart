import 'package:flutter/material.dart';
import '../../core/all_file.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomIndex = 0;

  List<Widget> pagesNavigationBottomBar = const [HomeView(), PersonCart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.colorWhite,
      appBar: AppBar(
        title: Row(
          children: [
            Text("Device Shop",
                style: TextStyle(
                  fontSize: getScreenSize(context).height / 30,
                  color: MyColors.colorBlack,
                )),
            const SizedBox(width: 25),
            Icon(Icons.devices, color: MyColors.colorBlack, size: 40),
          ],
        ),
        centerTitle: false,
        backgroundColor: MyColors.colorWhite,
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("The service is currently unavailable"),
                  ),
                );
              },
              icon: Icon(Icons.support_agent,
                  color: MyColors.colorBlack, size: 40)),
        ],
      ),
      drawer: const MyDrawer(),
      body: pagesNavigationBottomBar[bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: MyColors.colorWhite,
        unselectedItemColor: Colors.blueGrey,
        backgroundColor: MyColors.colorBlack,
        currentIndex: bottomIndex,
        onTap: (index) {
          setState(() {
            bottomIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: MyColors.colorWhite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.shopping_cart_outlined, color: MyColors.colorWhite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined, color: MyColors.colorWhite),
            label: '',
          ),
        ],
      ),
    );
  }
}
