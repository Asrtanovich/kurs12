import 'package:flutter/material.dart';
import 'first/first_page.dart';

void main() {
  runApp(const Adam());
}

class Adam extends StatelessWidget {
  const Adam({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstController(),
    );
  }
}
