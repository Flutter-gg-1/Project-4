import 'package:flutter/material.dart';
import 'package:shopping_app/pages/cart_page.dart';
import 'package:shopping_app/shared.dart';
import 'package:shopping_app/widgets/laptop_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.yellow[200],
          backgroundColor: const Color.fromARGB(255, 202, 203, 255),

          title: SizedBox(
            height: 45,
            width: 150,
            child: Image.asset("assets/general/logo.png"),
            //Color(0xff5355ca)
          ),
          centerTitle: true,

          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return CartPage();
                      },
                    ),
                  );
                },
                icon: Icon(Icons.shopping_cart_outlined))
          ],
        ),
        drawer: const Drawer(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of items per row
                    mainAxisSpacing: 10.0, // Vertical spacing between rows
                    crossAxisSpacing: 10.0, // Horizontal spacing between items
                    childAspectRatio:
                        2 / 3, // Aspect ratio to adjust item width/height
                  ),
                  itemCount: laptops.length,
                  itemBuilder: (context, index) {
                    return LaptopContainer(laptop: laptops[index]);
                  },
                  shrinkWrap: true, // Adjust size to fit content
                  physics:
                      const NeverScrollableScrollPhysics(), // Prevent scrolling if nested
                )
              ]),
            ),
          ),
        ));
  }
}
