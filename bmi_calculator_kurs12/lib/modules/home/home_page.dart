import 'package:bmi_calculator_kurs12/constants/colors/app_colors.dart';
import 'package:bmi_calculator_kurs12/modules/home/home_controller.dart';
import 'package:bmi_calculator_kurs12/modules/result/result_page.dart';
import 'package:bmi_calculator_kurs12/component/buttons/button_widget.dart';
import 'package:bmi_calculator_kurs12/component/buttons/custom_container_widget.dart';
import 'package:bmi_calculator_kurs12/component/buttons/weightAge_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.mainColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: (Column(
              children: [
                Text(
                  'Bmi calculator',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomContainerWidget(
                        icon: Icons.male,
                        text: "MALE",
                        tus: _homeController.maleColor.value,
                        onTap: _homeController.male,
                      ),
                      CustomContainerWidget(
                        icon: Icons.female,
                        text: 'FEMALE',
                        tus: _homeController.femaleColor.value,
                        onTap: _homeController.female,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.22,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: AppColors.secondarColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Height'.toUpperCase(),
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Obx(
                              () => Text(
                                _homeController.height.value.toStringAsFixed(0),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Obx(() => Slider(
                              activeColor: Colors.red,
                              inactiveColor: Colors.grey,
                              thumbColor: Colors.blue,
                              max: 220,
                              min: 0,
                              value: _homeController.height.value,
                              onChanged: (adamdynBasuusu) {
                                _homeController.height.value = adamdynBasuusu;

                                // setState(() {});
                              },
                            )),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      WeightAge(
                        tag1: '3',
                        tag2: '4',
                        titel: 'WIEGHT',
                        number: _homeController.wieght.value.toString(),
                        onPressedMines: _homeController.minusWeiht,
                        onPressedPlus: _homeController.plusWeiht,
                      ),
                      WeightAge(
                        tag1: '1',
                        tag2: '2',
                        titel: 'AGE',
                        number: _homeController.age.value.toString(),
                        onPressedMines: _homeController.minusAge,
                        onPressedPlus: _homeController.plusAge,
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
          bottomNavigationBar: ButtonWidget(
            buttonText: 'Жыйынтык',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    height: _homeController.height.value,
                    kg: _homeController.wieght.value,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
