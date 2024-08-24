import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project4/Cart/items.dart';
import 'package:project4/Profail/profile.dart';
import 'package:project4/src/Login/log_in.dart';

class Cart extends StatelessWidget {
  const Cart({super.key, required this.name, required this.imagePath});
  final String name;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xff125B9A),
        ),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'Cart',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 25,
                color: const Color(0xffF05A7E),
              ),
            ),
            const SizedBox(width: 8),
            const Icon(
              Icons.shopping_cart,
              color: Color(0xffF05A7E),
            ),
          ],
        ),
        actions: const [
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.black),
              SizedBox(width: 4),
              Text(
                'Riyadh',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(width: 16),
            ],
          ),
        ],
        elevation: 0,
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
          Center(
            child: Column(children: [
              SizedBox(
                height: screenHeight * 0.03,
              ),
              ProductCard(
                imagePath:
                    'lib/Home/Add_Pics/2fcf87e1-0308-4404-a20c-4fa30b5a78a3-500x500-OO3eIcb8O2sdSZr17fHmFc0R4bBq1D7Okq8VRwW8.webp',
                containerHeight: screenHeight * 0.3,
                containerWidth: screenWidth * 0.9,
              ),
              SizedBox(
                height: screenHeight * 0.0190,
              ),
              const Divider(
                color: Color(0x90e5e5e5),
                thickness: 10,
              ),
              SizedBox(
                height: screenHeight * 0.0190,
              ),
              ProductCard(
                imagePath:
                    'lib/Home/Add_Pics/2fcf87e1-0308-4404-a20c-4fa30b5a78a3-500x500-OO3eIcb8O2sdSZr17fHmFc0R4bBq1D7Okq8VRwW8.webp',
                containerHeight: screenHeight * 0.3,
                containerWidth: screenWidth * 0.9,
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              const Padding(
                  padding: EdgeInsets.only(right: 220),
                  child: Text(
                    'Total: 700SR',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.9,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xffF05A7E),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.9,
                          padding: EdgeInsets.all(screenWidth * 0.05),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'تم الطلب بنجاح',
                                style: GoogleFonts.dmSerifDisplay(
                                  fontSize: screenHeight * 0.04,
                                  color: const Color(0xffF05A7E),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Text(
                                'الطلب سياخذ يومين عمل',
                                style: GoogleFonts.dmSerifDisplay(
                                  fontSize: screenHeight * 0.02,
                                  color: const Color(0xffF05A7E),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.02),
                              Text(
                                'Order No: 8765',
                                style: GoogleFonts.dmSerifDisplay(
                                  fontSize: screenHeight * 0.02,
                                  color: const Color(0xffF05A7E),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.05),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffF05A7E),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'تم',
                                  style: GoogleFonts.dmSerifDisplay(
                                    color: Colors.white,
                                    fontSize: screenHeight * 0.025,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Buy',
                    style: GoogleFonts.dmSerifDisplay(
                        color: Colors.white, fontSize: 19),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
