import 'package:flutter/material.dart';
import 'package:shopping_app/shared.dart';
import 'package:shopping_app/widgets/laptop_container_widget.dart';
import 'package:shopping_app/widgets/my_app_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(),
      drawer: const Drawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
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
          ),
        ),
      ),
    );
  }
}
