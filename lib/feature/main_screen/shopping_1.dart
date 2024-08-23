import 'package:flutter/material.dart';

Widget myPageViewShopping_1() {
  return Builder(builder: (context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: PageView(scrollDirection: Axis.horizontal, children: <Widget>[
        Container(
          width: 200,
          height: 200,
          color: const Color.fromARGB(255, 76, 64, 63),
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.green,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.yellow,
        ),
      ]),
    );
  });
}
