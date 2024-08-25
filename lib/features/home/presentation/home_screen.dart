import 'package:flutter/material.dart';
import 'package:project_04/core/constants/colors.dart';
import 'package:project_04/core/constants/images.dart';
import 'package:project_04/features/auth/presentation/login_screen.dart'; 
import 'package:shimmer_animation/shimmer_animation.dart';
import 'dart:io';

class HomeScreen extends StatefulWidget {
  final String? profileImage;

  const HomeScreen({
    super.key,
    this.profileImage,
  });

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CartItem> _cartItems = [];
  bool _isLoading = true;
  String? _profileImage;

  @override
  void initState() {
    super.initState();
    _profileImage = widget.profileImage;
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  void _addToCart(String plantName, String plantPrice, String imagePath) {
    setState(() {
      final existingItem = _cartItems.indexWhere((item) => item.plantName == plantName);
      if (existingItem >= 0) {
        _cartItems[existingItem].quantity += 1;
      } else {
        _cartItems.add(CartItem(plantName: plantName, plantPrice: plantPrice, imagePath: imagePath));
      }
    });
  }

  Future<void> _showLogoutConfirmation() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); 
              },
            ),
            TextButton(
              child: const Text('Logout'),
              onPressed: () {
                Navigator.of(context).pop(); 
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>  LoginScreen()), 
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> plantImagePaths = [
      'assets/plants/Plant 1.png',
      'assets/plants/Plant 2.png',
      'assets/plants/Plant 3.png',
      'assets/plants/Plant 4.png',
      'assets/plants/Plant 2.png',
      'assets/plants/Plant 4.png',
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(cartItems: _cartItems, isLoading: _isLoading),
                ),
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: _profileImage != null
                          ? FileImage(File(_profileImage!))
                          : null,
                      radius: 30,
                      child: _profileImage == null
                          ? const Icon(Icons.person, size: 30, color: Colors.white)
                          : null,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context); 
              },
            ),
            const Spacer(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                _showLogoutConfirmation();
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 190,
            child: PageView(
              children: [
                _isLoading
                    ? Shimmer(
                        duration: const Duration(seconds: 5),
                        color: Colors.grey[300]!,
                        child: Container(color: Colors.grey[300]),
                      )
                    : Image.asset(AppImages.offer1, fit: BoxFit.cover),
                _isLoading
                    ? Shimmer(
                        duration: const Duration(seconds: 5),
                        color: Colors.grey[300]!,
                        child: Container(color: Colors.grey[300]),
                      )
                    : Image.asset(AppImages.offer2, fit: BoxFit.cover),
                _isLoading
                    ? Shimmer(
                        duration: const Duration(seconds: 5),
                        color: Colors.grey[300]!,
                        child: Container(color: Colors.grey[300]),
                      )
                    : Image.asset(AppImages.offer3, fit: BoxFit.cover),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilterChip(
                  label: const Text('All'),
                  selected: true,
                  onSelected: (_) {},
                  backgroundColor: AppColors.primaryColor.withOpacity(0.1),
                  selectedColor: AppColors.primaryColor,
                ),
                FilterChip(
                  label: const Text('Outdoor'),
                  selected: false,
                  onSelected: (_) {},
                  backgroundColor: AppColors.primaryColor.withOpacity(0.1),
                  selectedColor: AppColors.primaryColor,
                ),
                FilterChip(
                  label: const Text('Indoor'),
                  selected: false,
                  onSelected: (_) {},
                  backgroundColor: AppColors.primaryColor.withOpacity(0.1),
                  selectedColor: AppColors.primaryColor,
                ),
                FilterChip(
                  label: const Text('Office Plants'),
                  selected: false,
                  onSelected: (_) {},
                  backgroundColor: AppColors.primaryColor.withOpacity(0.1),
                  selectedColor: AppColors.primaryColor,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.builder(
                itemCount: plantImagePaths.length, 
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return _isLoading
                      ? Shimmer(
                          duration: const Duration(seconds: 5),
                          color: Colors.grey[300]!,
                          child: Container(color: Colors.grey[300]),
                        )
                      : PlantCard(
                          plantName: 'Plant ${index + 1}',
                          plantPrice: '\$${(index + 1) * 10}',
                          imagePath: plantImagePaths[index],
                          onAddToCart: _addToCart,
                        );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem {
  final String plantName;
  final String plantPrice;
  final String imagePath;
  int quantity;

  CartItem({
    required this.plantName,
    required this.plantPrice,
    required this.imagePath,
    this.quantity = 1,
  });
}

class PlantCard extends StatelessWidget {
  final String plantName;
  final String plantPrice;
  final String imagePath;
  final Function(String, String, String) onAddToCart;

  const PlantCard({
    super.key,
    required this.plantName,
    required this.plantPrice,
    required this.imagePath,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: AppColors.primaryColor.withOpacity(0.1),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(imagePath, fit: BoxFit.cover, width: double.infinity),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              plantName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              plantPrice,
              style: const TextStyle(
                color: Colors.green,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: const Icon(Icons.add_shopping_cart),
              color: AppColors.accentColor,
              onPressed: () {
                onAddToCart(plantName, plantPrice, imagePath);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  final List<CartItem> cartItems;
  final bool isLoading;

  const CartScreen({
    super.key,
    required this.cartItems,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: isLoading
          ? Shimmer(
              duration: const Duration(seconds: 5),
              color: Colors.grey[300]!,
              child: Container(color: Colors.grey[300]),
            )
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  leading: Image.asset(item.imagePath),
                  title: Text(item.plantName),
                  subtitle: Text('Price: ${item.plantPrice}, Quantity: ${item.quantity}'),
                );
              },
            ),
    );
  }
}
