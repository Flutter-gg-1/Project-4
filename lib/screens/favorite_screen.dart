import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:shopping_app/utils/data/user_data.dart';
import '../models/item.dart';

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
          Positioned(
            top: 10,
            left: MediaQuery.of(context).size.width / 3,
            child: Text(
              'Favorites',
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.green[700],
                  fontWeight: FontWeight.bold),
            ),
          ),
          if (currentUser!.favorites.isNotEmpty)
            Positioned.fill(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: currentUser!.favorites.length,
                  itemBuilder: (context, index) {
                    final Item item = currentUser!.favorites[index];
                    return isLoading
                        ? Shimmer(
                            duration: const Duration(seconds: 2),
                            direction: const ShimmerDirection.fromLeftToRight(),
                            child: Container(
                              decoration: BoxDecoration(
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
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    item.imagePath,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        '\$${item.price.toStringAsFixed(2)}',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.yellow[900],
                                            fontWeight: FontWeight.bold),
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
                              ],
                            ),
                          );
                  },
                ),
              ),
            )
          else
            Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/nothing-found.png',
                        ),
                        fit: BoxFit.cover)),
                child: const Text(''),
              ),
            )
        ],
      ),
    );
  }
}
