import 'package:flutter/material.dart';

class ShoesModel {
  String name;
  double price;
  String img;
  Color modelColor;
  String model;
  String details;
  List? sizes;

  ShoesModel({
    required this.name,
    required this.price,
    required this.img,
    required this.modelColor,
    required this.model,
    required this.details,
     this.sizes,
  });
}
