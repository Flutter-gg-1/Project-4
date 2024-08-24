import 'package:flutter/material.dart';
import 'package:project4/src/widgets/card_widget.dart';
import '../custom_paint/home_screen_background.dart';

class GraduationScreen extends StatelessWidget {
  const GraduationScreen({super.key});

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
                          child: Text("Graduation cards",
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
                                photPath: 'assets/graduation_images/graduation1.png',
                                price: '5SR',
                                text: 'Graduation card',
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 60,
                              child: const CardWidget(
                                photPath: 'assets/graduation_images/2.png',
                                price: '5SR',
                                text: 'Graduation card',
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 60,
                              child: const CardWidget(
                                photPath: 'assets/graduation_images/1.png',
                                price: '5SR',
                                text: 'Graduation card',
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