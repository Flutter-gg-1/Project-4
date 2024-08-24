import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class CoffeInfo extends StatelessWidget {
  final bool fromDrawer;
  const CoffeInfo({super.key, required this.fromDrawer});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 230, 197),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            fromDrawer==true? IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios_new_rounded)):const Text(''),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.3,
                left: MediaQuery.of(context).size.width / 3.6,
                child: Text(
                  'Who we are?',
                  style: GoogleFonts.dancingScript(
                      color: Colors.white, fontSize: 35),
                )),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.25,
                  vertical: MediaQuery.of(context).size.height * 0.1),
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.16,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: kElevationToShadow[2],
                  color: const Color(0xFFc09d58)),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.039,
                left: MediaQuery.of(context).size.width * 0.25,
                right: MediaQuery.of(context).size.width * 0.25,
                child: ClipOval(
                    child: Image.asset(
                  'assest/image/info.png',
                  height: MediaQuery.of(context).size.height * 0.22,
                ))),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.4,
                left: MediaQuery.of(context).size.width * 0.1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Welcome to our high-end café, where we specialize in crafting exceptional coffee experiences. Our commitment to quality sets us apart, and we take immense pride in serving our esteemed customers.',
                    style: GoogleFonts.kaushanScript(
                        color: const Color.fromARGB(255, 122, 118, 118),
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  ),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.62,
                left: MediaQuery.of(context).size.width * 0.15,
                child: Column(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: const Divider()),
                    const SizedBox(
                      height: 35,
                    ),
                    const Text('Contact'),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(AntDesign.instagram_fill)),
                        const SizedBox(
                          width: 30,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Bootstrap.snapchat)),
                        const SizedBox(
                          width: 30,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Bootstrap.google)),
                        const SizedBox(
                          width: 30,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Bootstrap.tiktok)),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
