import 'package:get/get.dart';

class HomePageController extends GetxController {
  //variables of getx
  RxInt n = 0.obs;

  void add() {
    n++;
    print(n);
  }

  void sub() {
    n--;
    print(n);
  }
}
