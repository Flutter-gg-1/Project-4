import 'package:flutter/material.dart';
import '../../core/all_file.dart';

Widget myPageViewShopping_2() {
  return Builder(builder: (context) {
    return Container(
      height: getScreenSize(context).height,
      width: getScreenSize(context).width,
      color: const Color.fromRGBO(192, 134, 255, 1),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: getScreenSize(context).width / 2.2,
                height: getScreenSize(context).height / 3.5,
                // color: const Color.fromRGBO(192, 134, 255, 1),
              ),
              SizedBox(
                width: getScreenSize(context).width / 2.2,
                height: getScreenSize(context).height / 3.5,
                // color: const Color.fromRGBO(192, 134, 255, 1),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: getScreenSize(context).width,
            height: getScreenSize(context).height,
            color: const Color.fromRGBO(190, 160, 250, 1),
          ),
        ],
      ),
    );
  });
}
