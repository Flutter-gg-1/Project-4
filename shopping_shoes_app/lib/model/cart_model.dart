import 'package:shopping_shoes_app/model/shoes_model.dart';

class CartModel extends ShoesModel {
  int qnt;
  String selectedSize;
  CartModel(
      {required super.name,
      required super.price,
      required super.img,
      required super.modelColor,
      required super.model,
      required super.details,
      required this.selectedSize,
      required this.qnt});
}
