import 'package:coffeshop_app/widget/profile/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  final bool fromDrawer;
  const Profile({super.key, required this.fromDrawer});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF2D7),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            widget.fromDrawer == true
                ? IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios_new_rounded))
                : const Text(''),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.25,
                  vertical: MediaQuery.of(context).size.height * 0.1),
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: kElevationToShadow[2],
                  color: const Color(0xFFc09d58)),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.0001,
                left: MediaQuery.of(context).size.width * 0.25,
                right: MediaQuery.of(context).size.width * 0.25,
                child: ClipOval(
                    child: Image.asset(
                  'assest/image/userprofile.png',
                  height: MediaQuery.of(context).size.height * 0.3,
                ))),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.34,
                left: MediaQuery.of(context).size.width * 0.25,
                right: MediaQuery.of(context).size.width * 0.25,
                child: Column(
                  children: [
                    Text(
                      'Basel Saad',
                      style: GoogleFonts.sacramento(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown),
                    ),
                    Text('New member',
                        style: GoogleFonts.italiana(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown)),
                  ],
                )),
            const ProfileDetails(),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.78,
              left: MediaQuery.of(context).size.width * 0.25,
              right: MediaQuery.of(context).size.width * 0.25,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.4,
                        MediaQuery.of(context).size.height / 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: const Color.fromARGB(255, 223, 140, 62)),
                child: Text(
                  'Update',
                  style: GoogleFonts.merienda(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
