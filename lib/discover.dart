import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:customizable_counter/customizable_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          drawer: const Drawer(),
          appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 133, 165, 157)),
          title: const Text('Discover',  style: TextStyle(fontSize: 24, fontFamily: "Gilroy", color: Color.fromARGB(255, 133, 165, 157)),),
          elevation: 0,
      
            bottom: 
            ButtonsTabBar(
              elevation:0,
              height: 80,
              width: 80,
              contentPadding: EdgeInsets.fromLTRB(12, 2, 5, 2),
              backgroundColor: const Color.fromARGB(255, 242, 132, 130),
                unselectedBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
                unselectedLabelStyle: const TextStyle(color: Colors.black),
        
                labelStyle:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                   ),
              tabs: [
                  Tab(
                    icon: SvgPicture.asset('assets/svg/Bouquet.svg',),
                  ),
                  Tab(
                    icon: SvgPicture.asset('assets/svg/vase.svg'),
                  ),
                  Tab(
                    icon: SvgPicture.asset('assets/svg/gift.svg'),
                  ),
                  Tab(
                    icon: SvgPicture.asset('assets/svg/pot.svg'),
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
            BouquetList(),
            VazeList(),
            GiftList(),
            PotList()
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



class VazeList extends StatelessWidget {

  const VazeList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView( 
      children: const [
        Row(
          children: [
          Card(img: "assets/images/vase1.png", title: "flowers", desc: "Lorem ipsum dolor sit amet.", price: "120 SAR",),
          Spacer(),
          Card(img: "assets/images/vase2.png", title: "Roses", desc: "Lorem ipsum dolor sit amet.", price: "200 SAR",),
          ],
        ),
        SizedBox(height: 20,),
          Row(
          children: [
          Card(img: "assets/images/vase3.png", title: "Lavender", desc: "Lorem ipsum dolor sit amet.", price: "150 SAR",),
          Spacer(),
          Card(img: "assets/images/vase4.png", title: "Gardenflower", desc: "Lorem ipsum dolor sit amet.", price: "160 SAR",),
          ],
        ),
              ]

    );
  }
}



class PotList extends StatelessWidget {

  const PotList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView( 
      children: const [
        Row(
          children: [
          Card(img: "assets/images/flowerspot.png", title: "flowers pot", desc: "Lorem ipsum dolor sit amet.", price: "120 SAR",),
          Spacer(),
          ],
        ),
              ]

    );
  }
}

class GiftList extends StatelessWidget {

  const GiftList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView( 
      children: const [
        Row(
          children: [
          Card(img: "assets/images/gift.png", title: "Gift box", desc: "Lorem ipsum dolor sit amet.", price: "400 SAR",),
          Spacer(),
          ],
        ),
              ]

    );
  }
}

class BouquetList extends StatelessWidget {

  
  const BouquetList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView( 
      children: const [
        Row(
          children: [
          Card(img: "assets/images/flower_img1.png", title: "Lavender", desc: "Lorem ipsum dolor sit amet.", price: "120 SAR",),
          Spacer(),
          Card(img: "assets/images/flower_img2.png", title: "Roses", desc: "Lorem ipsum dolor sit amet.", price: "200 SAR",),
          ],
        ),
        SizedBox(height: 20,),
          Row(
          children: [
          Card(img: "assets/images/flower_img3.png", title: "Lavender", desc: "Lorem ipsum dolor sit amet.", price: "150 SAR",),
          Spacer(),
          Card(img: "assets/images/flower_img4.png", title: "Gardenflower", desc: "Lorem ipsum dolor sit amet.", price: "160 SAR",),
          ],
        ),
        SizedBox(height: 20,),
          Row(
          children: [
          Card(img: "assets/images/flower_img5.png", title: "flowers", desc: "Lorem ipsum dolor sit amet.", price: "180 SAR",),
          Spacer(),
          Card(img: "assets/images/flower_img6.png", title: "tulips", desc: "Lorem ipsum dolor sit amet.", price: "300 SAR",),
          ],
        )
              ]

    );
  }
}

class Card extends StatelessWidget {

  final String img;
  final String title;
  final String desc;
  final String price;
  
  const Card({super.key, required this.img, required this.title, required this.desc, required this.price});
  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
      Container(
        width: 165,
        height: 235,
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
              Container(
                height: 145,
                width: 150,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100)),
                child: Image.asset(img)
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: "Gilroy", color: Color.fromARGB(255, 124, 124, 124))
                        ),
                        Text(
                        price, style: const TextStyle(fontSize: 14, fontFamily: "Gilroy", color: Color.fromARGB(255, 124, 124, 124)
                        ),
                      ),
                      ]
                    ),
                    const Spacer(),
                        InkWell(
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 246, 189, 96),
                              borderRadius: BorderRadius.circular(10)
                            ), 
                            child: const Icon(
                              Icons.add,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 20,
                            ),),
                             onTap: () {
                              showModalBottomSheet(isScrollControlled: true, context: context, builder: (context){
                                return Container(
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                  height: 700,
                                  width: double.infinity,
                                    child: Column(
                                      children: [
                                        Image.asset(img),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(height: 10,),
                                                      Text(title,  style: const TextStyle(fontSize: 24, fontFamily: "Gilroy", color: Color.fromARGB(255, 0, 0, 0))),
                                                      Text(desc, style: const TextStyle(fontSize: 14,fontFamily: "Gilroy", color: Color.fromARGB(255, 0, 0, 0))),
                                                      const SizedBox(height: 20,),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(price, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: "Gilroy", color: Color.fromARGB(255, 0, 0, 0))),
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  const CustomizableCounter(
                                                    borderWidth: 0,
                                                  )
                                                ]
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
                                                  showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        title: const Text(''),
                                                        content: Column(
                                                          mainAxisSize: MainAxisSize.min,
                                                          children: [
                                                            const Text(
                                                              'Successfully added to cart!',
                                                              textAlign: TextAlign.center,
                                                            ),
                                                            const SizedBox(height: 16.0),
                                                            ElevatedButton(
                                                              onPressed: () {
                                                                Navigator.of(context).pop();
                                                              },
                                                              child: const Text('okay', style: TextStyle(color: Color.fromARGB(255, 133, 165, 157)),
                                                            ),)
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(builder: (context) => const Discover()),
                                                      );
                                                },
                                                child: const Text('Add to cart', style: TextStyle(fontSize: 18, fontFamily: "Gilroy", color: Color.fromARGB(255, 255, 255, 255))),
                                              ),
                                            ],
                                          ),
                                        )
                                        
                                      ], 
                                  ),        
                                     );
                              });
                            },
                          
                        ),
                  ],
                ), 
          ],
        ),
    ),
              ]

    );
  }
}