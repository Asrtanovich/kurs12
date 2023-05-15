import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misal_app/first/first_controller.dart';
import 'package:misal_app/second/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key key}) : super(key: key);
  FirstController _firstController =
      Get.put<FirstController>(FirstController());

  @override
  Widget build(BuildContext context) {
    int san = 0;
    RxInt count = 0.obs;
    log('Build ====>${_firstController.count.value}');
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Тапшырма 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                child: Obx(() => Text(
                      "San:${_firstController.count.value}",
                      style: TextStyle(
                        color: Color.fromARGB(221, 16, 4, 4),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0)),
                    minimumSize: Size(40, 50), //////// HERE
                  ),
                  onPressed: () {
                    _firstController.kemituu;
                  },
                  child: Icon(
                    Icons.remove,
                    color: Color.fromARGB(255, 233, 225, 225),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0)),
                    minimumSize: Size(40, 50), //////// HERE
                  ),
                  onPressed: () {
                    _firstController.koshuu;
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondPage(),
            ),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
