import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project4/Home/adds.dart';
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
              child: imagePath == null ? Icon(Icons.person) : null,
            ),
            Text('User name: $name'),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ListTile(
                title: Text('Profile'),
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
                title: Text('Log out'),
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
                height: screenHeight * 0.3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8.0),
                  children: [
                    GrayContainer(
                      imag:
                          'lib/Home/Add_Pics/IWOq2iYXjSWNBKeiszkrjcwOpTiMonHQZvP8hJyx (1).webp',
                    ),
                    SizedBox(
                      width: screenWidth * 0.30,
                    ),
                    GrayContainer(
                      imag:
                          'lib/Home/Add_Pics/78a468e1-6084-49c0-b3a3-38b1663c168e-1000x1000-wf0hKWjNiQBuLtPutalIpMzXBt2g8j1oYEO28ORs.webp',
                    ),
                    SizedBox(
                      width: screenWidth * 0.30,
                    ),
                    GrayContainer(
                      imag:
                          'lib/Home/Add_Pics/385ca025-d250-4c71-8b1d-ed84c30742ac-1000x1000-Z1jZCsKsbmrQYZvmJ6jOxXVrQbmWjFdESRyyTERo.webp',
                    ),
                  ],
                ),
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
              SizedBox(
                height: screenHeight * 0.2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GrayContainer(
                    imag:
                        'lib/Home/Add_Pics/385ca025-d250-4c71-8b1d-ed84c30742ac-1000x1000-Z1jZCsKsbmrQYZvmJ6jOxXVrQbmWjFdESRyyTERo.webp',
                  ),
                  GrayContainer(
                    imag:
                        'lib/Home/Add_Pics/2fcf87e1-0308-4404-a20c-4fa30b5a78a3-500x500-OO3eIcb8O2sdSZr17fHmFc0R4bBq1D7Okq8VRwW8.webp',
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GrayContainer(
                    imag:
                        'lib/Home/Add_Pics/385ca025-d250-4c71-8b1d-ed84c30742ac-1000x1000-Z1jZCsKsbmrQYZvmJ6jOxXVrQbmWjFdESRyyTERo.webp',
                  ),
                  GrayContainer(
                    imag:
                        'lib/Home/Add_Pics/2fcf87e1-0308-4404-a20c-4fa30b5a78a3-500x500-OO3eIcb8O2sdSZr17fHmFc0R4bBq1D7Okq8VRwW8.webp',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
