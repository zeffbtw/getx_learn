import 'package:get/get.dart';

class IncrementController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update();
  }
}
