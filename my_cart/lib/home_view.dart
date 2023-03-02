import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056C5C),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Text(
            'MyCart',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Turat Alybaev',
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffF7F9F9),
                  fontFamily: 'Pacifico'),
            ),
          ],
        ),
      ),
    );
  }
}
