import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:shopping_app/models/laptop.dart';
import 'package:shopping_app/widgets/empty_laptop_container.dart';
import 'package:shopping_app/widgets/laptop_container_widget.dart';

class HomeContainersWidget extends StatefulWidget {
  final List<Laptop> laptops;
  const HomeContainersWidget({super.key, required this.laptops});

  @override
  State<HomeContainersWidget> createState() => _HomeContainersWidgetState();
}

class _HomeContainersWidgetState extends State<HomeContainersWidget> {
  late bool isLoading;

  @override
  void initState() {
    isLoading = true;
    Future.delayed(const Duration(milliseconds: 500), () {
      isLoading = false;
      setState(() {});
    });
    super.initState();
  }

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
          itemCount: widget.laptops.length,
          itemBuilder: (context, index) {
            return isLoading
                ? Shimmer(
                    child: const EmptyLaptopContainer(),
                  )
                : LaptopContainerWidget(laptop: widget.laptops[index]);
          },
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        )
      ]),
    );
  }
}
