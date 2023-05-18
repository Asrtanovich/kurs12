import 'package:bmi_calculator_kurs12/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<Color> maleColor = AppColors.inactiveColor.obs;
  Rx<Color> femaleColor = AppColors.inactiveColor.obs;

  Rx<double> height = 0.0.obs;
  Rx<int> wieght = 60.obs;
  Rx<int> age = 20.obs;
  void male() {
    maleColor.value = AppColors.activeColor;

    femaleColor.value = AppColors.inactiveColor;
  }

  void female() {
    femaleColor.value = AppColors.activeColor;

    maleColor.value = AppColors.inactiveColor;
  }

  void minusWeiht() {
    wieght.value--;
  }

  void plusWeiht() {
    wieght.value++;
  }

  void minusAge() {
    age.value--;
  }

  void plusAge() {
    age.value++;
  }
}
