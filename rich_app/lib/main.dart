import 'package:flutter/material.dart';

void main() {
  runApp(RichApp());
}

class RichApp extends StatelessWidget {
  const RichApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Center(
          child: Text(
            'Homework 3',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w200,
                fontFamily: 'PermanentMarker',
                color: Colors.black87),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'I\'m Rich App',
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Kalam',
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Image.asset(
              'assets/images/diamond1.jpg',
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
