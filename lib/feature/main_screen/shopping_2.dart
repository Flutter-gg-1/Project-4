import 'package:flutter/material.dart';
import '../../core/all_file.dart';

Widget myPageViewShopping_2() {
  return Builder(builder: (context) {
    return SizedBox(
      width: getScreenSize(context).width,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('Mobiles',
                      style: TextStyle(
                          fontSize: getScreenSize(context).height / 25,
                          color: Colors.black)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.black),
                    ),
                    width: getScreenSize(context).width / 2.2,
                    height: getScreenSize(context).height / 4,
                    child: const Image(
                      image: AssetImage('assets/images/dev/i15.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('Computers',
                      style: TextStyle(
                          fontSize: getScreenSize(context).height / 25,
                          color: Colors.black)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.black),
                    ),
                    width: getScreenSize(context).width / 2.2,
                    height: getScreenSize(context).height / 4,
                    child: const Image(
                      image: AssetImage('assets/images/dev/hp15.6.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  });
}
