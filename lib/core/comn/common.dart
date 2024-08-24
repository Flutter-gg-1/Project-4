import 'package:flutter/material.dart';

Size getScreenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

Widget myContainer(
    {required String imagePath,
    required double width,
    required double height,
    BoxFit? fit = BoxFit.cover}) {
  return Builder(builder: (context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.black),
      ),
      width: getScreenSize(context).width / width,
      height: getScreenSize(context).height / height,
      child: Image(
        image: AssetImage(imagePath),
        fit: fit,
      ),
    );
  });
}
