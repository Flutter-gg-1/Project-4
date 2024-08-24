import 'package:flutter/material.dart';
import 'package:shopping_shoes_app/data/app_helper.dart';
import 'package:shopping_shoes_app/data/global_variabels.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  int lblCount = 1;
  @override
  void initState() {
    // TODO: implement initState
    print(myCart);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.arrow_back),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "My Bag",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Total ${AppHelper.getAllLengthItems()} Items")
              ],
            ),
            const Divider(),
            Container(
                width: size.width,
                height: size.height / 1.8,
                padding: const EdgeInsets.all(12),
                child: myCart.isNotEmpty
                    ? ListView.builder(
                        itemCount: myCart.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Container(
                                width: size.width,
                                height: 150,
                                margin: const EdgeInsets.all(12),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 20,
                                      left: 10,
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: myCart[index].modelColor,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 50,
                                        child: RotationTransition(
                                          turns: const AlwaysStoppedAnimation(
                                              -30 / 360),
                                          child: SizedBox(
                                              width: 150,
                                              child: Image.asset(
                                                  myCart[index].img)),
                                        )),
                                    Positioned(
                                        top: 20,
                                        left: 180,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${myCart[index].name} ${myCart[index].model}",
                                              style:
                                                  const TextStyle(fontSize: 12),
                                            ),
                                            Text("${myCart[index].price} SAR",
                                                style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    myCart[index].qnt > 1
                                                        ? {
                                                            myCart[index].qnt--,
                                                          }
                                                        : myCart[index].qnt = 1;
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width: 30,
                                                    height: 30,
                                                    color: Colors.black12,
                                                    child: const Icon(
                                                      Icons.remove,
                                                      size: 15,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text("${myCart[index].qnt}"),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    myCart[index].qnt++;
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width: 30,
                                                    height: 30,
                                                    color: Colors.black12,
                                                    child: const Icon(
                                                      Icons.add,
                                                      size: 15,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      )
                    : const Center(
                        child:
                            Text("You have not added anything to the cart"))),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total"),
                Text("${AppHelper.getAllAmountItems()} SAR")
              ],
            ),
            Container(
              width: size.width,
              height: size.height / 16,
              margin: const EdgeInsets.all(16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xffcb3759),
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "Continue to pay",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            )
          ],
        ),
      ),
    );
  }
}
