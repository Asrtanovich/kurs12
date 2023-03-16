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
              'Ибраев Исмаил',
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffF7F9F9),
                  fontFamily: 'Pacifico'),
            ),
            const Text(
              'Концултант по юридическим делам',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffF7F9F9),
                  fontFamily: 'Roboto'),
            ),
            const Divider(
              color: Color(0xffffffff),
              thickness: 2,
              indent: 60,
              endIndent: 70,
            ),
            Container(
              height: 55,
              color: Colors.white,
              child: Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.call,
                    size: 30,
                    color: Color(0xff056C5C),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '+996706566006',
                    style: TextStyle(fontSize: 22, color: Color(0xff056C5C)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 55,
              color: Colors.white,
              child: Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.mail,
                    size: 30,
                    color: Color(0xff056C5C),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'ibraev.ismail999@gmail.com',
                    style: TextStyle(fontSize: 22, color: Color(0xff056C5C)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
