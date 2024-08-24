import 'package:flutter/material.dart';
import 'package:shopping_app/screens/item_screen.dart';
import 'package:shopping_app/utils/navigation_helper.dart';

import '../utils/data/user_data.dart';
import '../utils/item.dart';

class ItemPageview extends StatelessWidget {
  final Item item;
  const ItemPageview({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            SizedBox(
                child: Text(
              'Scroll and explore ${item.category} section',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                child: const Text(
                  'You can tap on an item to view its page containing more details',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemScreen(item: item)));
              },
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black, width: 7),
                    borderRadius: BorderRadius.circular(25)),
                child: Image.asset(item.imagePath, height: 300, width: 300),
              ),
            ),
            Text(
              item.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 1.2,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: 70,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.grey.withOpacity(0.1),
              Colors.white.withOpacity(0.4)
            ])),
          ),
        ),
        const Align(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.grey,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.7,
          left: MediaQuery.of(context).size.width * 0.3,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 20,
                  surfaceTintColor: Colors.green,
                  backgroundColor: const Color.fromARGB(255, 236, 202, 169)),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NavigationHelper(
                              user: currentUser!,
                              index: 2,
                            )));
              },
              child: const Text(
                'Go Back',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
        )
      ],
    );
  }
}
