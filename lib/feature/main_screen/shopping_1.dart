import 'package:flutter/material.dart';

import '../../core/all_file.dart';

Widget myPageViewShopping_1() {
  return Builder(builder: (context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: PageView(scrollDirection: Axis.horizontal, children: <Widget>[
        SizedBox(
          width: getScreenSize(context).height / 5,
          child: const Image(
            image: AssetImage('assets/images/school.png'),
            width: 400,
            height: 400,
          ),
        ),
        SizedBox(
          width: getScreenSize(context).height / 5,
          child: const Image(
            image: AssetImage('assets/images/school2.png'),
            width: 400,
            height: 400,
          ),
        ),
      ]),
    );
  });
}
