import 'package:flutter/material.dart';
import 'package:flutter_suroo/suroo.dart';

void main() {
  runApp(SurooJoop());
}

class SurooJoop extends StatelessWidget {
  const SurooJoop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Suroo(),
    );
  }
}
