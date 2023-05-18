import 'package:bmi_calculator_kurs12/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.onPressedMines,
    required this.onPressedPlus,
    this.titel,
    this.number,
    required this.tag1,
    required this.tag2,
  });
  final void Function()? onPressedMines;
  final void Function()? onPressedPlus;
  final String? titel;
  final String? number;
  final Object? tag1;
  final Object? tag2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondarColor,
        borderRadius: BorderRadius.circular(15),
      ),
      width: MediaQuery.of(context).size.width * 0.42,
      height: MediaQuery.of(context).size.height * 0.26,
      child: Column(
        children: [
          Text(
            titel!,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            '$number',
            style: TextStyle(
                color: Colors.white, fontSize: 80, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                heroTag: tag1,
                onPressed: onPressedMines,
                child: Icon(
                  Icons.remove,
                  size: 20,
                ),
              ),
              FloatingActionButton(
                heroTag: tag2,
                onPressed: onPressedPlus,
                child: Icon(
                  Icons.add,
                  size: 20,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
