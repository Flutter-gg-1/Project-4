import 'package:flutter/material.dart';

Widget myPageViewShopping_1() {
  return Builder(builder: (context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromRGBO(192, 134, 255, 1),
      child:
          PageView(scrollDirection: Axis.horizontal, children: const <Widget>[
        SizedBox(
          width: 200,
          height: 200,
          child: Image(
            image: AssetImage('assets/images/school.png'),
            width: 400,
            height: 400,
          ),
        ),
        SizedBox(
          width: 200,
          height: 200,
          child: Image(
            image: AssetImage('assets/images/school2.png'),
            width: 400,
            height: 400,
          ),
        ),
      ]),
    );
  });
}
