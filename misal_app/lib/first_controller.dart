import 'package:get/get.dart';

class FirstController extends GetxController{
  int san =0;
      setState(() {});
    san = san + 1; // uzun jolu
    // san++; kyska jolu
  }

  void kemituu() {
    if (san == 0) {
      san = 0;
    } else {
      setState(() {});
      san = san - 1;
    }
  }
}