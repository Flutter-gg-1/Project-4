import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:shopping_app/utils/blob.dart';
import 'package:shopping_app/widgets/item_pageview.dart';
import '../utils/data/items_data.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late bool isLoading;

  @override
  void initState() {
    isLoading = true;
    super.initState();
    changeShimmerState();
  }

  changeShimmerState() async {
    await Future.delayed(const Duration(seconds: 2));
    if (isLoading) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background-main.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: favorite.length,
                itemBuilder: (context, index) {
                  final item = favorite[index];
                  return isLoading
                      ? Shimmer(
                          duration: const Duration(seconds: 2),
                          direction: const ShimmerDirection.fromLeftToRight(),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[300],
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 4),
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                          ))
                      : Card(
                          shadowColor: Colors.red,
                          elevation: 10,
                          shape: CircleBorder(),
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  item.imagePath,
                                ),
                              ),
                              Text(
                                item.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
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
