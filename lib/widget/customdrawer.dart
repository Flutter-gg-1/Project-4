import 'package:coffeshop_app/src/coffe_info_screen.dart';
import 'package:coffeshop_app/src/login_screen.dart';
import 'package:coffeshop_app/src/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFFFF2D7),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.1,
        ),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
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
                    left: MediaQuery.of(context).size.width * 0.22,
                    right: MediaQuery.of(context).size.width * 0.22,
                    child: ClipOval(
                        child: Image.asset(
                      'assest/image/userprofile.png',
                      height: MediaQuery.of(context).size.height * 0.3,
                    ))),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.27,
                    left: MediaQuery.of(context).size.width * 0.25,
                    right: MediaQuery.of(context).size.width * 0.25,
                    child: Text(
                      'Basel Saad',
                      style: GoogleFonts.sacramento(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown),
                    )),
              ],
            ),
            Column(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ListTile(
                        title: const Text('Update profile'),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Profile(
                                  fromDrawer: true,
                                ),
                              ),
                            ))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ListTile(
                        title: const Text('About us'),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CoffeInfo(
                                  fromDrawer: true,
                                ),
                              ),
                            ))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: ListTile(
                      title: const Text(
                        'Logout',
                        style: TextStyle(color: Colors.red),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded,
                          color: Colors.red),
                        onTap: () => Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(
                                ),
                              ),(route) => false,
                            )
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
