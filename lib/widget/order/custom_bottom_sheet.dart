import 'package:coffeshop_app/src/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: const BoxDecoration(
                color: Color(0xFFFFF2D7),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Additional Details',
                        style: GoogleFonts.sora(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: const Divider(
                          color: Color(0xFFFFFBF5),
                          thickness: 4,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Location : Medina,Saudi Arabia',
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'OrderNo : #65435',
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Time : ${DateTime.now().hour}:${DateTime.now().minute}  AM',
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey),
                ),
                Expanded(
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => AlertDialog(
                            contentPadding: const EdgeInsets.all(0),
                            content: Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: MediaQuery.of(context).size.height * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Thank you',
                                    style: GoogleFonts.sora(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                  Text(
                                    'Order have been recived',
                                    style: GoogleFonts.sora(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                        Future.delayed(
                          const Duration(seconds: 3),
                          () => Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                              (Route<dynamic> route) => false),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.4,
                              MediaQuery.of(context).size.height / 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor:
                              const Color.fromARGB(255, 223, 140, 62)),
                      child: Text(
                        'Confirm',
                        style: GoogleFonts.merienda(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
              ],
            ),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width * 0.4,
              MediaQuery.of(context).size.height / 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: const Color.fromARGB(255, 223, 140, 62)),
      child: Text(
        'Order',
        style: GoogleFonts.merienda(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
      ),
    );
  }
}
