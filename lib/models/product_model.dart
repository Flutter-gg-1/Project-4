import 'package:pro4/global.dart';

class ProductModel {
  final int id;
  final String title;
  final double  price;
  final String description;
  final String img;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.img});

  static void removePro(
      {required List<ProductModel> list, required int proId}) {
    for (int i = 0; i < list.length; i++) {
      if (list[i].id == proId) {
        list.removeAt(i);
        return;
      }
    }
    
  }



  static double getTotal(){

double total = 0;


    for(var val in cartList){


      total += val.price;


    }

    return total;
  }
}
