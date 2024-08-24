import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../custom_paint/home_screen_background.dart';
import '../widgets/alert_dialog_widget.dart';
import '../widgets/card_widget.dart';
import '../widgets/drawer_widget.dart';

import '../widgets/rectangular_containers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool isloading;
  @override
  void initState() {
    isloading = true;
    Future.delayed(const Duration(seconds: 2), (){
      isloading = false;
      setState(() {
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(), 
      body: Builder(
        builder: (BuildContext context) {
          return Stack(
            children: [
              CustomPaint(
                size: Size(MediaQuery.of(context).size.width, 180),
                painter: RPSCustomPainter2(),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xff582277).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 6,
                                blurStyle: BlurStyle.outer,
                                color: Color(0xff582277),
                              ),
                            ],
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              prefixIcon: const Icon(Icons.search_outlined),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xff582277).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 6,
                                blurStyle: BlurStyle.outer,
                                color: Color(0xff582277),
                              ),
                            ],
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialogWidget();
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "Offers",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          isloading? Shimmer(child: SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width - 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [const Color(0xffE8E8E8).withOpacity(0.2), const Color(0xff828282).withOpacity(0.5)], begin: Alignment.topLeft),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 10,
                          )
                        ]
                      ),
                    ),)):
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width - 60,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 7,
                                  blurStyle: BlurStyle.outer,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "assets/offers/Purple Modern Special Offers 8.8 Super Sale Facebook Ad.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "Top invites card",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          isloading? Shimmer(child: SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                child: const RectangleContainers())):
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 60,
                            child: const CardWidget(
                              photPath: 'assets/graduation_images/graduation1.png',
                              price: '5SR',
                              text: 'Graduation card',
                            ),
                          ),
                          const SizedBox(height: 20),
                          isloading? Shimmer(child: SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                child: const RectangleContainers())):
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 60,
                            child: const CardWidget(
                              photPath: 'assets/wedding_images/White Beige Classy Floral Fall Wedding Invitation.png',
                              price: '5SR',
                              text: 'Wedding card',
                            ),
                          ),
                          const SizedBox(height: 20),
                          isloading? Shimmer(child: SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                child: const RectangleContainers())):
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 60,
                            child: const CardWidget(
                              photPath: 'assets/event_images/Brown Floral Baby Shower Invitation Card.png',
                              price: '5SR',
                              text: 'Event card',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
