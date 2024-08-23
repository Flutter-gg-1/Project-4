import 'package:flutter/material.dart';
import '../../core/all_file.dart';

Widget myPageViewShopping_2() {
  return Builder(builder: (context) {
    return Stack(
      children: [
        Container(
          height: getScreenSize(context).height,
          width: getScreenSize(context).width,
          color: Colors.blue,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getScreenSize(context).width / 2.5,
                    height: 200,
                    color: const Color.fromARGB(255, 76, 64, 63),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  });
}
