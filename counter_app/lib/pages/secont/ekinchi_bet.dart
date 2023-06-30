import 'package:flutter/material.dart';

class EkinchiBet extends StatelessWidget {
  EkinchiBet({Key? key, this.san}) : super(key: key);
  final int? san;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 40,
          decoration: const BoxDecoration(
            color: Color(0xffBDBDBD),
            borderRadius: BorderRadius.all(Radius.circular(12.0) //
                ),
          ),
          width: 294,
          child: Center(
            child: Text(
              'San:$san',
              style: const TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
