import 'package:flutter/material.dart';

import '../custom_paint/home_screen_background.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Builder(
        builder: (BuildContext context) {
          return Stack(
            children: [
              CustomPaint(
                size: Size(MediaQuery.of(context).size.width, 180),
                painter: RPSCustomPainter2(),
              ),
              const Column(
                children: [
                  
                  SizedBox(height: 30),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 170, top: 50),
                            child: Text(
                              "favorite",
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
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