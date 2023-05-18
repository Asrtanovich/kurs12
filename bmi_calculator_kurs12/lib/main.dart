import 'package:bmi_calculator_kurs12/modules/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCalculotor());
}

class BmiCalculotor extends StatelessWidget {
  const BmiCalculotor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
