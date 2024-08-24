import 'package:e_commerce_ui/about_screen.dart';
import 'package:e_commerce_ui/custom_widgets/appColors.dart';
import 'package:e_commerce_ui/custom_widgets/product_gridView.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ecruWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.ecruWhite,
        title: Text(
          'Find the home Furniture',
          style: TextStyle(color: AppColors.spicyMix),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: TabBar(
            dividerColor: Colors.transparent,
            unselectedLabelColor: Colors.black,
            controller: tabController,
            indicator: BoxDecoration(),
            tabs: [
              buildFloatingTab('All', 0),
              buildFloatingTab('Sofa', 1),
              buildFloatingTab('Candle', 2),
              buildFloatingTab('Table', 3),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.spicyMix,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
            // Add more items here if needed
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 26.0),
        child: TabBarView(
          controller: tabController,
          children: [
            ProductGridView(category: 'All'),
            ProductGridView(category: 'Sofa'),
            ProductGridView(category: 'Candle'),
            ProductGridView(category: 'Table'),
          ],
        ),
      ),
    );
  }

  Widget buildFloatingTab(String text, int index) {
    return Tab(
      child: AnimatedBuilder(
        animation: tabController,
        builder: (context, child) {
          final isSelected = tabController.index == index;
          return Container(
            width: 64,
            height: 50,
            decoration: BoxDecoration(
              color: isSelected ? AppColors.spicyMix : AppColors.wafer,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
