import 'package:get/get.dart';

class FirstController extends GetxController {
  Rx<int> san = 0.obs;
  RxInt count = 0.obs;
  void koshuu() {
    san.value = san.value + 1; // uzun jolu
    // san++; kyska jolu
  }

  void kemituu() {
    if (san == 0) {
      san.value = 0;
    } else {
      san.value = san.value - 1;
    }
  }
}
