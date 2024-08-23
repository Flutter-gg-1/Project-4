import 'package:flutter/material.dart';
import 'package:shopping_app/models/laptop.dart';
import 'package:shopping_app/widgets/loptop_bottom_sheet.dart';

class LaptopContainer extends StatefulWidget {
  final Laptop laptop;
  const LaptopContainer({
    super.key,
    required this.laptop,
  });

  @override
  State<LaptopContainer> createState() => _LaptopContainerState();
}

class _LaptopContainerState extends State<LaptopContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (builder) {
              return LoptopBottomSheet(
                laptop: widget.laptop,
              );
            });
      },
      child: Container(
        height: 230,
        width: 150,
        constraints: const BoxConstraints(maxHeight: 280, maxWidth: 150),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 222, 222, 222),
                  offset: Offset(0, 2),
                  blurRadius: 5,
                  spreadRadius: 2)
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)), // Same radius as the container
            child: Center(
              child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset(
                  widget.laptop.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.laptop.name,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.laptop.brand,
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "\$${widget.laptop.price}",
                  style:
                      const TextStyle(fontSize: 20, color: Color(0xff5355ca)),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
