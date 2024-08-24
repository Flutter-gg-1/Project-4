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
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Mobiles()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.black),
                      ),
                      child: myContainer(
                          imagePath: 'assets/images/dev/i15.png',
                          width: 2.2,
                          height: 4),
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Computers()));
                    },
                    child: myContainer(
                        imagePath: 'assets/images/dev/hp15.6.png',
                        width: 2.2,
                        height: 4),
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
