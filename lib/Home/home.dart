import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project4/Home/adds.dart';
import 'package:project4/Home/prduct_page.dart';
import 'package:project4/Home/product.dart';
import 'package:project4/Home/search.dart';
import 'package:project4/Profail/profile.dart';
import 'package:project4/src/Login/log_in.dart';

class Home extends StatelessWidget {
  Home({super.key, required this.name, this.imagePath});
  final String name;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    String imagOne =
        'lib/Home/Add_Pics/2fcf87e1-0308-4404-a20c-4fa30b5a78a3-500x500-OO3eIcb8O2sdSZr17fHmFc0R4bBq1D7Okq8VRwW8.webp';
    String imageTow =
        'lib/Home/Add_Pics/385ca025-d250-4c71-8b1d-ed84c30742ac-1000x1000-Z1jZCsKsbmrQYZvmJ6jOxXVrQbmWjFdESRyyTERo.webp';
    String nameTow = 'Boss';
    String nameOne = 'La Vie est belle';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Perfume',
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 30,
            color: const Color(0xffF05A7E),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xff125B9A),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 238, 239, 240),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.08,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage:
                  imagePath != null ? FileImage(File(imagePath!)) : null,
              child: imagePath == null ? const Icon(Icons.person) : null,
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Text('User name: $name'),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ListTile(
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(name: name),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ListTile(
                title: const Text('Log out'),
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LogIn()),
                    (Route<dynamic> route) => false,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: screenHeight * 0.01,
              ),
              SearchField(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Text(
                'احدث المنتجات',
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 30,
                  color: const Color(0xffF05A7E),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.4,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8.0),
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GrayContainer(
                          imag:
                              'lib/Home/Add_Pics/IWOq2iYXjSWNBKeiszkrjcwOpTiMonHQZvP8hJyx (1).webp',
                        ),
                        SizedBox(
                            height: screenHeight * 0.0350,
                            child: Text(
                              'منتجات تليق بك',
                              style: GoogleFonts.dmSerifDisplay(
                                fontSize: 18,
                                color: const Color(0xffF05A7E),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: screenWidth * 0.10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GrayContainer(
                          imag:
                              'lib/Home/Add_Pics/78a468e1-6084-49c0-b3a3-38b1663c168e-1000x1000-wf0hKWjNiQBuLtPutalIpMzXBt2g8j1oYEO28ORs.webp',
                        ),
                        SizedBox(
                            height: screenHeight * 0.0350,
                            child: Text(
                              "تشكيله السنه",
                              style: GoogleFonts.dmSerifDisplay(
                                fontSize: 18,
                                color: const Color(0xffF05A7E),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: screenWidth * 0.10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GrayContainer(
                          imag:
                              'lib/Home/Add_Pics/385ca025-d250-4c71-8b1d-ed84c30742ac-1000x1000-Z1jZCsKsbmrQYZvmJ6jOxXVrQbmWjFdESRyyTERo.webp',
                        ),
                        SizedBox(
                            height: screenHeight * 0.0350,
                            child: Text(
                              'خصومات الربيع',
                              style: GoogleFonts.dmSerifDisplay(
                                fontSize: 18,
                                color: const Color(0xffF05A7E),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color(0x90e5e5e5),
                thickness: 10,
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Text(
                'المنتجات',
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 30,
                  color: const Color(0xffF05A7E),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: screenWidth * 0.77),
                child: Text(
                  '...اكتشف اكثر',
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 15,
                    color: const Color(0xff125B9A),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PrductPage(
                            image: imageTow,
                            name: nameTow,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Product(
                          imag: imageTow,
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Text(nameTow),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text('4.5'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '119 مباع',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const Text('350SR')
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PrductPage(
                            image: imagOne,
                            name: nameOne,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Product(
                          imag:
                              'lib/Home/Add_Pics/2fcf87e1-0308-4404-a20c-4fa30b5a78a3-500x500-OO3eIcb8O2sdSZr17fHmFc0R4bBq1D7Okq8VRwW8.webp',
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        const Text('Luxry Perfume'),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text('4.5'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '119 مباع',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const Text('350SR')
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Color(0x90e5e5e5),
                thickness: 10,
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PrductPage(
                            image: imageTow,
                            name: nameTow,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Product(
                          imag: imageTow,
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Text(nameTow),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text('4.5'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '119 مباع',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const Text('350SR')
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PrductPage(
                            image: imagOne,
                            name: nameOne,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Product(
                          imag:
                              'lib/Home/Add_Pics/2fcf87e1-0308-4404-a20c-4fa30b5a78a3-500x500-OO3eIcb8O2sdSZr17fHmFc0R4bBq1D7Okq8VRwW8.webp',
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        const Text('Luxry Perfume'),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text('4.5'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '119 مباع',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const Text('350SR')
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
