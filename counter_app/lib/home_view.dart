import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Homework1'),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          height: 70,
          width: 100,
        ),
      ),
    );
  }
}
