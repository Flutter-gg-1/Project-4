import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/globals/app_colors.dart';
import 'package:shopping_app/models/user.dart';

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
          const CircleAvatar(backgroundColor: Colors.white,radius: 40,backgroundImage: AssetImage('assets/default_profile_pic.png')),
          Text(
            'Hello, ${widget.user.name}',
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: thirdColor),
            width: 150,
            child: TextButton(
              onPressed: () {},
              child: Text("Edit Profile",style: GoogleFonts.poppins(color: mainColor, fontSize: 16))
            ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: thirdColor),
            width: 150,
            child: TextButton(
              onPressed: () {},
              child: Text("Sign Out",style: GoogleFonts.poppins(color: mainColor, fontSize: 16))
            ),
          ),
        ],
      ),
    );
  }
}