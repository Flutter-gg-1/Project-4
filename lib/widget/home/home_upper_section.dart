import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          color: const Color(0xFFEFBC9B).withOpacity(0.8),
        ),
        IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: const Icon(Icons.menu)),
        Positioned(
            left: MediaQuery.of(context).size.width / 3,
            child: Text(
              'Welcome..',
              style:
                  GoogleFonts.dancingScript(color: Colors.white, fontSize: 35),
            )),
        Positioned(
          left: MediaQuery.of(context).size.width / 8,
          top: MediaQuery.of(context).size.height / 12,
          child: Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [
                      Text(
                        'Medina,Saudi Arabia',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        FontAwesome.location_dot_solid,
                        color: Color.fromARGB(255, 213, 227, 233),
                        size: 15,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
              ),
              Container(
                width: 35,
                height: 35,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.asset('assest/image/profile.png'),
              ),
            ],
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 6,
          left: MediaQuery.of(context).size.width / 25,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(128, 145, 141, 141)),
            child: const ListTile(
              title: Text(
                'Location',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                LineAwesome.search_location_solid,
                color: Colors.white,
              ),
              trailing: Icon(
                Iconsax.setting_5_bold,
                color: Color.fromARGB(255, 205, 129, 129),
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3.8,
          left: MediaQuery.of(context).size.width / 23,
          child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 163,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //color: Colors.red,
                  boxShadow: kElevationToShadow[4]),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assest/image/promo.jpg',
                    fit: BoxFit.fitWidth,
                  ))),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3.6,
          left: MediaQuery.of(context).size.width / 12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 68,
                height: 30,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF10D0D)),
                child: Center(
                    child: Text(
                  'Promo',
                  style: GoogleFonts.sora(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Buy one get one FREE',
                    style: GoogleFonts.sora(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
