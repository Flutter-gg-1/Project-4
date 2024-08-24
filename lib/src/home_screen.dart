import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app_project/src/product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffBCC3C3), Color(0xffB9C4C4)],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          drawer: const Drawer(),
          appBar: AppBar(
            toolbarHeight: 90,
            title: const Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Explore',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
            actions: const [
              Icon(
                Icons.search_outlined,
                size: 40,
              ),
              SizedBox(
                width: 40,
              )
            ],
            //elevation: 0,
            backgroundColor: Colors.transparent,
            bottom: TabBar(
                //onTap:
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: const Color(0xffAABB5D),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                labelColor: Colors.black,
                tabs: [
                  Material(
                    //elevation: 8,
                    surfaceTintColor: Colors.transparent,
                    color: Colors.transparent,
                    child: Container(
                      height: 47,
                      width: 45,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                blurStyle: BlurStyle.outer,
                                blurRadius: 1,
                                offset: const Offset(0, 0.1))
                          ],
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(child: Text('All')),
                    ),
                  ),
                  Material(
                    //elevation: 8,
                    surfaceTintColor: Colors.transparent,
                    color: Colors.transparent,
                    child: Container(
                      height: 47,
                      width: 45,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                blurStyle: BlurStyle.outer,
                                blurRadius: 1,
                                offset: const Offset(0, 0.1))
                          ],
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8)),
                      child:
                          const Center(child: FaIcon(FontAwesomeIcons.couch)),
                    ),
                  ),
                  Material(
                    elevation: 8,
                    surfaceTintColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: Container(
                      height: 47,
                      width: 45,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                blurStyle: BlurStyle.outer,
                                blurRadius: 1,
                                offset: const Offset(0, 0.1))
                          ],
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8)),
                      child:
                          const Center(child: FaIcon(FontAwesomeIcons.chair)),
                    ),
                  ),
                  Material(
                    elevation: 8,
                    surfaceTintColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: Container(
                      height: 47,
                      width: 45,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                blurStyle: BlurStyle.outer,
                                blurRadius: 1,
                                offset: const Offset(0, 0.1))
                          ],
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8)),
                      child:
                          const Center(child: FaIcon(FontAwesomeIcons.table)),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            ListView(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.list,
                            size: 30,
                            color: const Color(0xFF000000).withOpacity(0.70),
                          )),
                      const SizedBox(
                        width: 22,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.ellipsis,
                          size: 30,
                          color: const Color(0xFF000000).withOpacity(0.70),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 19, top: 15),
                  child: Text(
                    'All',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 260,
                  child: ListView(
                      shrinkWrap: false,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              child: Container(
                                height: 230,
                                width: 200,
                                margin: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    const ListTile(
                                      leading: FaIcon(
                                        FontAwesomeIcons.solidStar,
                                        color: Colors.yellow,
                                      ),
                                      title: Text('4.2'),
                                      trailing: FaIcon(
                                        FontAwesomeIcons.solidHeart,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Image.asset('assets/sofa.png'),
                                    const Text('Double Seat Sofa'),
                                    ListTile(
                                      leading: const FaIcon(
                                          FontAwesomeIcons.dollarSign),
                                      title: const Text('8000'),
                                      trailing: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: Color(0xffF5C900),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 5, top: 2),
                                            child: FaIcon(
                                              FontAwesomeIcons.plus,
                                              color: Colors.white,
                                            ),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const ProductScreen();
                                }));
                              },
                            ),
                            Container(
                              height: 230,
                              width: 200,
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  const ListTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                    ),
                                    title: Text('4.2'),
                                    trailing: FaIcon(
                                      FontAwesomeIcons.solidHeart,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Image.asset('assets/chair.png'),
                                  const Text('Double Seat Sofa'),
                                  ListTile(
                                    leading: const FaIcon(
                                        FontAwesomeIcons.dollarSign),
                                    title: const Text('8000'),
                                    trailing: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: Color(0xffF5C900),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.only(left: 5, top: 2),
                                          child: FaIcon(
                                            FontAwesomeIcons.plus,
                                            color: Colors.white,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 230,
                              width: 200,
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  const ListTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                    ),
                                    title: Text('4.2'),
                                    trailing: FaIcon(
                                      FontAwesomeIcons.solidHeart,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Image.asset('assets/sofa.png'),
                                  const Text('Double Seat Sofa'),
                                  ListTile(
                                    leading: const FaIcon(
                                        FontAwesomeIcons.dollarSign),
                                    title: const Text('8000'),
                                    trailing: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: Color(0xffF5C900),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.only(left: 5, top: 2),
                                          child: FaIcon(
                                            FontAwesomeIcons.plus,
                                            color: Colors.white,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 19, top: 15),
                  child: Text(
                    'Recently Reviewed',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 260,
                  child: ListView(
                      shrinkWrap: false,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 230,
                              width: 200,
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  const ListTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                    ),
                                    title: Text('4.2'),
                                    trailing: FaIcon(
                                      FontAwesomeIcons.solidHeart,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Image.asset('assets/sofa.png'),
                                  const Text('Double Seat Sofa'),
                                  ListTile(
                                    leading: const FaIcon(
                                        FontAwesomeIcons.dollarSign),
                                    title: const Text('8000'),
                                    trailing: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: Color(0xffF5C900),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.only(left: 5, top: 2),
                                          child: FaIcon(
                                            FontAwesomeIcons.plus,
                                            color: Colors.white,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 230,
                              width: 200,
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  const ListTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                    ),
                                    title: Text('4.2'),
                                    trailing: FaIcon(
                                      FontAwesomeIcons.solidHeart,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Image.asset('assets/chair.png'),
                                  const Text('Double Seat Sofa'),
                                  ListTile(
                                    leading: const FaIcon(
                                        FontAwesomeIcons.dollarSign),
                                    title: const Text('8000'),
                                    trailing: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: Color(0xffF5C900),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.only(left: 5, top: 2),
                                          child: FaIcon(
                                            FontAwesomeIcons.plus,
                                            color: Colors.white,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 230,
                              width: 200,
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  const ListTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                    ),
                                    title: Text('4.2'),
                                    trailing: FaIcon(
                                      FontAwesomeIcons.solidHeart,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Image.asset('assets/sofa.png'),
                                  const Text('Double Seat Sofa'),
                                  ListTile(
                                    leading: const FaIcon(
                                        FontAwesomeIcons.dollarSign),
                                    title: const Text('8000'),
                                    trailing: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: Color(0xffF5C900),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.only(left: 5, top: 2),
                                          child: FaIcon(
                                            FontAwesomeIcons.plus,
                                            color: Colors.white,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 19, top: 15),
                  child: Text(
                    'Sofa',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 260,
                  child: ListView(
                      shrinkWrap: false,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 230,
                              width: 200,
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  const ListTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                    ),
                                    title: Text('4.2'),
                                    trailing: FaIcon(
                                      FontAwesomeIcons.solidHeart,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Image.asset('assets/sofa2.png'),
                                  const Text('Double Seat Sofa'),
                                  ListTile(
                                    leading: const FaIcon(
                                        FontAwesomeIcons.dollarSign),
                                    title: const Text('8000'),
                                    trailing: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: Color(0xffF5C900),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.only(left: 5, top: 2),
                                          child: FaIcon(
                                            FontAwesomeIcons.plus,
                                            color: Colors.white,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 230,
                              width: 200,
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  const ListTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                    ),
                                    title: Text('4.2'),
                                    trailing: FaIcon(
                                      FontAwesomeIcons.solidHeart,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Image.asset('assets/sofa.png'),
                                  const Text('Double Seat Sofa'),
                                  ListTile(
                                    leading: const FaIcon(
                                        FontAwesomeIcons.dollarSign),
                                    title: const Text('8000'),
                                    trailing: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: Color(0xffF5C900),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.only(left: 5, top: 2),
                                          child: FaIcon(
                                            FontAwesomeIcons.plus,
                                            color: Colors.white,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 230,
                              width: 200,
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  const ListTile(
                                    leading: FaIcon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.yellow,
                                    ),
                                    title: Text('4.2'),
                                    trailing: FaIcon(
                                      FontAwesomeIcons.solidHeart,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Image.asset('assets/sofa-3.png'),
                                  const Text('Double Seat Sofa'),
                                  ListTile(
                                    leading: const FaIcon(
                                        FontAwesomeIcons.dollarSign),
                                    title: const Text('8000'),
                                    trailing: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: Color(0xffF5C900),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.only(left: 5, top: 2),
                                          child: FaIcon(
                                            FontAwesomeIcons.plus,
                                            color: Colors.white,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
            const Text('2'),
            const Text('3'),
            const Text('4')
          ]),
        ),
      ),
    );
  }
}
