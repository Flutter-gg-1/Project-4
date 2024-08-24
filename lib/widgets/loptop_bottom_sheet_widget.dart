import 'package:flutter/material.dart';
import 'package:shopping_app/models/cart_item.dart';
import 'package:shopping_app/models/laptop.dart';
import 'package:shopping_app/shared.dart';

class LoptopBottomSheetWidget extends StatefulWidget {
  final Laptop laptop;
  const LoptopBottomSheetWidget({super.key, required this.laptop});

  setState() {}
  @override
  State<LoptopBottomSheetWidget> createState() => _LoptopBottomSheetState();
}

class _LoptopBottomSheetState extends State<LoptopBottomSheetWidget> {
  String quantity = "1";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      height: 800,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                widget.laptop.image,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name:",
                        style: TextStyle(color: Color(0xff5355ca)),
                      ),
                      Text(
                        "Brand:",
                        style: TextStyle(color: Color(0xff5355ca)),
                      ),
                      Text(
                        "Processor:",
                        style: TextStyle(color: Color(0xff5355ca)),
                      ),
                      Text(
                        "RAM:",
                        style: TextStyle(color: Color(0xff5355ca)),
                      ),
                      Text(
                        "Capacity:",
                        style: TextStyle(color: Color(0xff5355ca)),
                      ),
                      Text(
                        "Price:",
                        style: TextStyle(color: Color(0xff5355ca)),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.laptop.name),
                      Text(widget.laptop.brand),
                      Text(widget.laptop.processor),
                      Text(widget.laptop.ram),
                      Text(widget.laptop.capacity),
                      Text(widget.laptop.price.toString()),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _decrementButton(),
                const SizedBox(
                  width: 10,
                ),
                Text(quantity),
                const SizedBox(
                  width: 10,
                ),
                _incrementButton(),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    CartItem cartItem = CartItem(
                        laptop: widget.laptop, quantity: int.parse(quantity));
                    setState(() {
                      for (var item in loggedIn.cart) {
                        if (item.laptop == cartItem.laptop) {
                          item.quantity += cartItem.quantity;
                          return;
                        }
                      }
                      setState(() {
                        loggedIn.cart.add(cartItem);
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Added to cart successfully'),
                          ),
                        );
                      });
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color(0xff5355ca),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _incrementButton() {
    return GestureDetector(
        onTap: () {
          int myQty = int.parse(quantity);
          myQty < 10
              ? setState(() {
                  myQty++;
                  quantity = myQty.toString();
                })
              : myQty = myQty;
        },
        child: Container(
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff5355ca),
          ),
          child: const Icon(
            Icons.arrow_drop_up_outlined,
            color: Colors.white,
          ),
        ));
  }

  Widget _decrementButton() {
    return GestureDetector(
        onTap: () {
          int myQty = int.parse(quantity);
          myQty > 1
              ? setState(() {
                  myQty--;
                  quantity = myQty.toString();
                })
              : myQty = myQty;
        },
        child: Container(
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff5355ca),
          ),
          child: const Icon(
            Icons.arrow_drop_down_outlined,
            color: Colors.white,
          ),
        ));
  }
}
