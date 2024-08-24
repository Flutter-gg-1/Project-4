
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.5,
      left: MediaQuery.of(context).size.width * 0.1,
      right: MediaQuery.of(context).size.width * 0.1,
      child: SizedBox(
        child: Row(
          children: [
            Column(
              children: [
                Text('Joined in \n',
                    style: GoogleFonts.italiana(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
                Text('Status\n',
                    style: GoogleFonts.italiana(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
                Text('Mempership\n',
                    style: GoogleFonts.italiana(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
                Text('Location',
                    style: GoogleFonts.italiana(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Text('2024\n',
                    style: GoogleFonts.italiana(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
                Text('Active\n',
                    style: GoogleFonts.italiana(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
                Text('Gold\n',
                    style: GoogleFonts.italiana(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber)),
                Text('Medina,Saudi Arabia',
                    style: GoogleFonts.italiana(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
