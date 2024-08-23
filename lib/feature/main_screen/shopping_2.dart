import 'package:flutter/material.dart';
import '../../core/all_file.dart';

Widget myPageViewShopping_2() {
  return Builder(builder: (context) {
    return Container(
      height: getScreenSize(context).height,
      width: getScreenSize(context).width,
      color: Colors.blue,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: getScreenSize(context).width / 2.2,
                height: getScreenSize(context).height / 3.5,
                color: const Color.fromARGB(255, 76, 64, 63),
              ),
              Container(
                width: getScreenSize(context).width / 2.2,
                height: getScreenSize(context).height / 3.5,
                color: Colors.green,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: getScreenSize(context).width,
            height: getScreenSize(context).height,
            color: Colors.green,
          ),
        ],
      ),
    );
  });
}
