import 'package:flutter/material.dart';

import '../widgets/custom_paint/home_screen_background.dart';
import '../widgets/card_widget.dart';

class WeddingScreen extends StatelessWidget {
  const WeddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (BuildContext context) {
          return Stack(
            children: [
              CustomPaint(
                size: Size(MediaQuery.of(context).size.width, 180),
                painter: RPSCustomPainter2(),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xff582277).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 6,
                                blurStyle: BlurStyle.outer,
                                color: Color(0xff582277),
                              ),
                            ],
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 300,
                          height: 40,
                          child: Text("Weddding cards",
                           style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 60,
                              child: const CardWidget(
                                photPath: 'assets/wedding_images/White Beige Classy Floral Fall Wedding Invitation.png',
                                price: '5SR',
                                text: 'Weddding card',
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 60,
                              child: const CardWidget(
                                photPath: 'assets/wedding_images/Pink and Green Floral Save the Date Card.png',
                                price: '5SR',
                                text: 'Weddding card',
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 60,
                              child: const CardWidget(
                                photPath: 'assets/wedding_images/Green Floral Wedding Invitation Card.png',
                                price: '5SR',
                                text: 'Weddding card',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}