import 'package:flutter/material.dart';

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
  double screenWidth = 0;

  @override
  void initState() {
    screenWidth = MediaQuery.of(context).size.width;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[50],
        leading: const BackButton(),
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
              Positioned(
                left: 7,
                top: -7,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red),
                  child: const Center(
                      child: Text(
                    '2',
                    style: TextStyle(
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
                setState(() {
                  isFavorite = !isFavorite;
                  // add to favorites
                });
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
                  fit: BoxFit.fill,
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
                                setState(() {
                                  isOrigColor = !isOrigColor;
                                });
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AlertDialog(
                                        content:
                                            Text('Only one Color available'),
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
                    Text(
                      widget.item.description,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '\$ ${widget.item.price.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.orange[700]),
              onPressed: () {},
              child: const Text(
                'Add to Cart',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ))
        ],
      ),
    );
  }
}
