import 'package:e_commerce_ui/about_screen.dart';
import 'package:e_commerce_ui/custom_widgets/appColors.dart';
import 'package:e_commerce_ui/custom_widgets/product_gridView.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
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
            controller: _tabController,
            indicator: BoxDecoration(), // Removes default indicator
            tabs: [
              _buildFloatingTab('All', 0),
              _buildFloatingTab('Sofa', 1),
              _buildFloatingTab('Candle', 2),
              _buildFloatingTab('Table', 3),
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
          controller: _tabController,
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

  Widget _buildFloatingTab(String text, int index) {
    return Tab(
      child: AnimatedBuilder(
        animation: _tabController,
        builder: (context, child) {
          final isSelected = _tabController.index == index;
          return Container(
            width: 64,
            height: 50,
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.spicyMix
                  : AppColors.wafer, // Change color based on selection
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
