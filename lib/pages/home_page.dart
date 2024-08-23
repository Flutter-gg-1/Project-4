import 'package:flutter/material.dart';
import 'package:shopping_app/shared.dart';
import 'package:shopping_app/widgets/laptop_container.dart';
import 'package:shopping_app/widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(),
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
