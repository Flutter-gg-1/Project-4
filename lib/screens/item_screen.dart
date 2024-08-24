import 'package:flutter/material.dart';
import 'package:shopping_app/utils/data/items_data.dart';
import 'package:shopping_app/utils/navigation_heper.dart';

import '../utils/item.dart';

class ItemScreen extends StatefulWidget {
  final Item item;
  const ItemScreen({
    super.key,
    required this.item,
  });

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  bool isFavorite = false;
  bool isOrigColor = true;

  @override
  void initState() {
    isFavorite = favorite.contains(widget.item);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[50],
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const NavigationHelper(
                index: 2,
              );
            }));
          },
        ),
        title: Text(
          'Jeem',
          style: TextStyle(
              fontSize: 30, color: Colors.blue[400], fontFamily: 'Matemasie'),
        ),
        centerTitle: true,
        actions: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const Icon(Icons.shopping_cart),
              if (cartItems != 0)
                Positioned(
                  left: 7,
                  top: -7,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.red),
                    child: Center(
                        child: Text(
                      '$cartItems',
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
              onTap: () {
                isFavorite = !isFavorite;
                if (isFavorite) {
                  favorite.add(widget.item);
                } else {
                  favorite.remove(widget.item);
                }
                setState(() {});
              },
              child: isFavorite
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(Icons.favorite_outline_outlined)),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/background-main.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width - 100,
                  child: isOrigColor
                      ? Image.asset(widget.item.imagePath)
                      : Image.asset(widget.item.secondImagePath),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: MediaQuery.of(context).size.height / 3 + 100),
              child: Positioned(
                top: MediaQuery.of(context).size.height / 3 + 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber[300]),
                          onPressed: () {},
                          child: Text(
                            '\u2605 ${widget.item.rating}',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            '${widget.item.reviews} Reviews',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Flexible(
                            child: Text(
                              widget.item.name,
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.black.withOpacity(0.3),
                            ),
                            onPressed: () {
                              if (widget.item.secondImagePath.isNotEmpty) {
                                isOrigColor = !isOrigColor;
                                setState(() {});
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AlertDialog(
                                        content: Text(
                                          'Only one Color available',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      );
                                    });
                              }
                            },
                            child: const Icon(
                              Icons.change_circle,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Description\n${widget.item.description}',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            shape: BoxShape.rectangle,
            gradient: LinearGradient(colors: [
              Colors.yellow.withOpacity(0.2),
              Colors.blueAccent.withOpacity(0.4),
              Colors.yellow.withOpacity(0.2)
            ])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '\$ ${widget.item.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[700]),
                onPressed: () {
                  if (widget.item.stock != 0) {
                    cartItems++;
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: const Text(
                              'Item out of stock!!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Back'))
                            ],
                          );
                        });
                  }
                  setState(() {});
                },
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
