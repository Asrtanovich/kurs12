import 'dart:math';

import 'package:bmi_calculator_kurs12/constants/colors/app_colors.dart';
import 'package:bmi_calculator_kurs12/data/local/bmi_data.dart';
import 'package:bmi_calculator_kurs12/component/buttons/button_widget.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    required this.height,
    required this.kg,
  });
  final double height;
  final int kg;

  @override
  Widget build(BuildContext context) {
    final bmi = BmiData.bmiCalculotor(height, kg);
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Жыйынтык',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.secondarColor,
                borderRadius: BorderRadius.circular(10),
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    BmiData.bmiResult(bmi).toString(),
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w500,
                        color: Colors.green),
                  ),
                  Text(
                    BmiData.bmiCalculotor(height, kg).toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Center(
                    child: Text(
                      BmiData.qiveDescription(bmi).toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ButtonWidget(
        buttonText: 'Артка кайтаруу',
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
