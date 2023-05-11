import 'package:get/get.dart';

class FirstController extends GetxController {
  int san = 0;
  void koshuu() {
    san = san + 1; // uzun jolu
    // san++; kyska jolu
  }

  void kemituu() {
    if (san == 0) {
      san = 0;
    } else {
      san = san - 1;
    }
  }
}
