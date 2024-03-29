import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misal_app/first/first_controller.dart';

// ignore: must_be_immutable
class SecondPage extends StatelessWidget {
  SecondPage();
  FirstController _firstController =
      Get.put<FirstController>(FirstController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Тапшырма 2'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(130, 83, 82, 82),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.07,
            child: Center(
              child: Text(
                "San:${_firstController.san.value} ",
                style: TextStyle(
                  color: Color.fromARGB(221, 16, 4, 4),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
