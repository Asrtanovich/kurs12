import 'package:flutter/material.dart';
import 'package:my_cart/home_view.dart';

void main() {
  runApp(const MyCart());
}

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
