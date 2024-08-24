import 'package:shopping_shoes_app/data/global_variabels.dart';

class AppHelper {
  static int getAllLengthItems() {
    int count = 0;
    for (var element in myCart) {
      count += element.qnt;
    }
    return count;
  }

  static double getAllAmountItems() {
    double sum = 0;
    for (var element in myCart) {
      sum += element.price * element.qnt;
    }
    return sum;
  }
}
