import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app_project/src/home_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBCC3C3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(builder: (context) {
              return const HomeScreen();
            }));
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 50,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/larg_sofa-removebg-preview.png',
            width: 400,
            height: 300,
          ), // Replace with your image path
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Turquoise Sofa',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Text('Price:'),
                        const SizedBox(width: 8),
                        const Text(
                          '₱6200.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30)),
                              child: IconButton(
                                onPressed: () {
                                  if (counter > 0) {
                                    counter--;
                                    setState(() {});
                                  }
                                },
                                icon: const FaIcon(FontAwesomeIcons.minus),
                              ),
                            ),
                            Text(
                              ' $counter ',
                              style: const TextStyle(fontSize: 20),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(30)),
                              child: IconButton(
                                onPressed: () {
                                  counter++;
                                  setState(() {});
                                },
                                icon: const FaIcon(FontAwesomeIcons.plus),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Three-seat sofas are best for living room and family room spaces. It is about 90 inches wide in the seating area, 38 inches deep, and 34 inches high.',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        Icon(Icons.lock),
                        SizedBox(width: 8),
                        Text('Secure Checkout'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(40)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.cartPlus,
                              size: 40,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 70,
                          width: 260,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text(
                                    'are you sure you want to buy it ?'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text(
                                      'No',
                                      style: TextStyle(fontSize: 21),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text(
                                      'Yes',
                                      style: TextStyle(fontSize: 21),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            child: const Text(
                              'But Now',
                              style: TextStyle(
                                  fontSize: 24, color: Colors.black87),
                            ),
                          ),
                        )
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: Colors.yellow,
                        //     padding: const EdgeInsets.symmetric(
                        //         horizontal: 80, vertical: 30),
                        //   ),
                        //   child: const Text(
                        //     'Buy Now',
                        //     style: TextStyle(
                        //       fontSize: 24,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
