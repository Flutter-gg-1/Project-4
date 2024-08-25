import 'package:customizable_counter/customizable_counter.dart';
import 'package:flutter/material.dart';
import 'package:project4/drawer.dart';


class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          drawer: const AppDrawer(),
          appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 133, 165, 157)),
          title: const Text('Cart',  style: TextStyle(fontSize: 24, fontFamily: "Raleway", color: Color.fromARGB(255, 133, 165, 157)),),
          elevation: 0,
      
            bottom: 
            const TabBar(
              indicatorColor: Color.fromARGB(255, 242, 132, 130),
                unselectedLabelStyle: TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
                labelStyle:
                  TextStyle(fontSize: 16, fontFamily: "Raleway", color: Color.fromARGB(255, 242, 132, 130)
                   ),
              tabs: [
                  Tab(
                    text: 'In cart',
                  ),
                  Tab(
                    text: 'Bought before',
                  ),
              ]
            ),
          ),
         body: const Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 16.0),
    Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 25, left: 25.0),
        child: TabBarView(
          children: [
            CartItems(img: "assets/images/flower_img1.png", title: "Lavender", desc: "Lorem ipsum dolor sit amet.", price: "120 SAR",),
            BoughtBefore()
          ],
        ),
      ),
    ),
  ],
),
        ),
      ),
    );
  }
}


class CartItems extends StatelessWidget {

  final String img;
  final String title;
  final String desc;
  final String price;
  
  const CartItems({super.key, required this.img, required this.title, required this.desc, required this.price});
  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
      Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10), //border corner radius
          boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.16),
          spreadRadius: 2,
          blurRadius: 3,
          offset: const Offset(0, 3),
          ),
        ],
        ),
        padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                    height: 115,
                    width: 120,
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                    child: Image.asset(img)
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title, style: const TextStyle(fontSize: 18, fontFamily: "Raleway", color: Color.fromARGB(255, 124, 124, 124))
                            ),
                            const SizedBox(height: 40,),
                            Row(
                              children: [
                                Text(
                                  price, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "Raleway", color: Color.fromARGB(255, 124, 124, 124)
                                  ),
                                ),
                                const SizedBox(width: 20,),
                                const CustomizableCounter(
                                borderWidth: 0,
                                count: 1,
                              )
                              ],
                            ),
                          ]
                        ),
                      
                      ],
                    ), 
                    ],
                    
                  ),
                ],
              ),

          ],
        ),
    ),
    const Spacer(),
    const Divider(),
    Row(
      children: [
        const Text('Total', style: TextStyle(fontSize: 16, fontFamily: "Raleway", color: Color.fromARGB(255, 124, 124, 124),)),
        const Spacer(),
        Text(price, style: const TextStyle(fontSize: 16, fontFamily: "Raleway", color: Color.fromARGB(255, 124, 124, 124),)),
      ],
    ),
    const SizedBox(height: 10,),
        MaterialButton(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          minWidth: double.infinity,
          height: 65,
          color: const Color.fromARGB(255, 242, 132, 130),
          onPressed: () {
          },
          child: const Text('Place Order', style: TextStyle(fontSize: 18, fontFamily: "Raleway", color: Color.fromARGB(255, 255, 255, 255))),
        ),
        const SizedBox(height: 30,)
      ]

    );
  }
}


class BoughtBefore extends StatelessWidget {
  
  const BoughtBefore({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column( 
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage('assets/images/flower.png'), width: 200, height: 200,),
        SizedBox(height: 10,),
        Text("Nothing yet", style: TextStyle(fontSize: 20, fontFamily: "Raleway", color: Color.fromARGB(255, 242, 132, 130),))
      ]

    );
  }
}
