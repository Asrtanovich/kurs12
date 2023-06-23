import 'package:counter_app/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CounterAp());
}

class CounterAp extends StatelessWidget {
  const CounterAp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowMaterialGrid: false,
      home: HomeView(),
    );
  }
}
