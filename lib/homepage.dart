import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project4/discover.dart';
import 'package:project4/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        extendBodyBehindAppBar: true,
  drawer: const AppDrawer(),
  appBar: AppBar(
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    iconTheme: const IconThemeData(color: Color.fromARGB(255, 133, 165, 157)),
    title: const Text('Home',  style: TextStyle(fontSize: 24, fontFamily: "Gilroy", color: Color.fromARGB(255, 133, 165, 157)),),
    elevation: 0,
      ),
      body: ListView(
        children: [
          //hero element
          Stack(
            children: [
              const SizedBox(
              height: 490,
              child: Image(image: AssetImage('assets/images/bg.png'),)
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 300, 20, 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Blooming Moments',  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: "Gilroy", color: Color.fromARGB(255, 255, 255, 255)),),
                    const SizedBox(height: 10,),
                    const Text("Celebrate life's special occasions with beautiful flowers.",  style: TextStyle(fontSize: 16, fontFamily: "Gilroy", color: Color.fromARGB(255, 255, 255, 255)),),
                    const SizedBox(height: 10,),
                    MaterialButton(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      minWidth: 250,
                      height: 65,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const Discover()),
                            );
                      },
                        child: const Text('Explore The Garden', style: TextStyle(fontSize: 18, fontFamily: "Gilroy", color: Color.fromARGB(255, 133, 165, 157))),
                      ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const Text('Discover categories',  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: "Gilroy", color: Color.fromARGB(255, 0, 0, 0)),),
                 const SizedBox(height: 10,),
                SvgPicture.asset('assets/svg/categories.svg',),

              ],
            ),
          ),
          
          ]
      )
    );
  }
}