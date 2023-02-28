import 'package:flutter/material.dart';
import 'package:my_flutter_4/home_view.dart';

void main(List<String> args) {
  runApp(MyCart());
}

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}
