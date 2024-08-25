import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/models/user.dart';
import 'package:shopping_app/screens/main_screen.dart';

class AppDrawer extends StatefulWidget {
  final User user;
  const AppDrawer({super.key, required this.user});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      backgroundColor: secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(backgroundColor: Colors.white,radius: 40,backgroundImage: widget.user.pic.contains('assets') ? AssetImage(widget.user.pic) : FileImage(File(widget.user.pic))),
          Text(
            'Hello, ${widget.user.name}',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Text(widget.user.email,
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 12)),
          const SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: thirdColor),
            width: 150,
            child: TextButton(
              onPressed: () async {
                final newImg = await ImagePicker().pickImage(source: ImageSource.gallery);
                if (newImg == null) {
                  return;
                }
                widget.user.pic = newImg.path;
                setState(() {});
              },
              child: Text("Edit Picture",style: GoogleFonts.poppins(color: mainColor, fontSize: 16))
            ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: thirdColor),
            width: 150,
            child: TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                  return const MainScreen();
                }), (predicate)=>false);
              },
              child: Text("Sign Out",style: GoogleFonts.poppins(color: mainColor, fontSize: 16))
            ),
          ),
        ],
      ),
    );
  }
}