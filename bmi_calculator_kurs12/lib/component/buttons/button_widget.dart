import 'package:bmi_calculator_kurs12/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.buttonText,
    this.onTap,
  }) : super(key: key);
  final String buttonText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.activeColor,
              borderRadius: BorderRadius.circular(12)),
          height: MediaQuery.of(context).size.height * 0.08,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
