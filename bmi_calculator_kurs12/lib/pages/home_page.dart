import 'package:bmi_calculator_kurs12/constants/colors/app_colors.dart';
import 'package:bmi_calculator_kurs12/pages/result_page.dart';
import 'package:bmi_calculator_kurs12/widgets/button_widget.dart';
import 'package:bmi_calculator_kurs12/widgets/custom_container_widget.dart';
import 'package:bmi_calculator_kurs12/widgets/weightAge_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color maleColor = AppColors.inactiveColor;
  Color femaleColor = AppColors.inactiveColor;

  double height = 0;
  int wieght = 60;
  int age = 20;
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomContainerWidget(
                      icon: Icons.male,
                      text: "MALE",
                      tus: maleColor,
                      onTap: () {
                        setState(() {
                          maleColor = AppColors.activeColor;

                          femaleColor = AppColors.inactiveColor;
                        });
                      },
                    ),
                    CustomContainerWidget(
                      icon: Icons.female,
                      text: 'FEMALE',
                      tus: femaleColor,
                      onTap: () {
                        setState(() {
                          femaleColor = AppColors.activeColor;

                          maleColor = AppColors.inactiveColor;
                        });
                      },
                    ),
                  ],
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
                            Text(
                              height.toStringAsFixed(0),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),
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
                        Slider(
                          activeColor: Colors.red,
                          inactiveColor: Colors.grey,
                          thumbColor: Colors.blue,
                          max: 220,
                          min: 0,
                          value: height,
                          onChanged: (adamdynBasuusu) {
                            height = adamdynBasuusu;

                            setState(() {});
                          },
                        )
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WeightAge(
                        tag1: '3',
                        tag2: '4',
                        titel: 'WIEGHT',
                        number: wieght.toString(),
                        onPressedMines: (() {
                          setState(() {
                            setState(() {
                              wieght--;
                            });
                          });
                        }),
                        onPressedPlus: (() {
                          setState(() {
                            setState(() {
                              wieght++;
                            });
                          });
                        })),
                    WeightAge(
                        tag1: '1',
                        tag2: '2',
                        titel: 'AGE',
                        number: age.toString(),
                        onPressedMines: (() {
                          setState(() {
                            setState(() {
                              age--;
                            });
                          });
                        }),
                        onPressedPlus: (() {
                          setState(() {
                            setState(() {
                              age++;
                            });
                          });
                        }))
                  ],
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
                    height: height,
                    kg: wieght,
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
