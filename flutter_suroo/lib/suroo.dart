import 'dart:developer';

import 'package:flutter/material.dart';

class Suroo extends StatefulWidget {
  Suroo({super.key});

  @override
  State<Suroo> createState() => _SurooState();
}

class _SurooState extends State<Suroo> {
  List<Icon> iconkalar = [];

  int esepte = 0;

  @override
  Widget build(BuildContext context) {
    log('ekran kuruldu  ======>>> $esepte');
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Kyrgyzstanda 7 oblast barby?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {});
                iconkalar.add(
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                );
                log('$iconkalar');
              },
              child: Container(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 10,
                  ),
                  child: Text(
                    'Tuura',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {});
                iconkalar.add(
                  Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                );
                log('$iconkalar');
              },
              child: Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 46,
                    vertical: 10,
                  ),
                  child: Text(
                    'Tuura emes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: iconkalar,
            ),
          ],
        ),
      ),
    );
  }
}
