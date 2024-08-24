import 'package:flutter/material.dart';
import 'package:shopping_app/models/laptop.dart';
import 'package:shopping_app/widgets/laptop_container_widget.dart';

class HomeContainersWidget extends StatelessWidget {
  final List<Laptop> laptops;
  const HomeContainersWidget({super.key, required this.laptops});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 2 / 3,
          ),
          itemCount: laptops.length,
          itemBuilder: (context, index) {
            return LaptopContainerWidget(laptop: laptops[index]);
          },
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        )
      ]),
    );
  }
}
