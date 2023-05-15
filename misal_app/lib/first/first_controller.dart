import 'package:get/get.dart';

class FirstController extends GetxController {
  Rx<int> san = 0.obs;
  RxInt count = 0.obs;
  void koshuu() => san.value = san.value + 1;

  void kemituu() {
    san.value--;
  }
}
