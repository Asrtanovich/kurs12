import 'package:flutter/material.dart';
import 'package:flutter_suroo/data/quiz_data.dart';

class Suroo extends StatefulWidget {
  Suroo({super.key});

  @override
  State<Suroo> createState() => _SurooState();
}

class _SurooState extends State<Suroo> {
  bool buttubu = false;
  void userdinJoobu(bool userJoobu) {
    final jooptor = quizData.joopAlipKel();
    if (jooptor == userJoobu) {
      iconkalar.add(
        Icon(
          Icons.check,
          size: 50,
          color: Colors.green,
        ),
      );
    } else {
      iconkalar.add(
        Icon(
          Icons.close,
          size: 50,
          color: Colors.red,
        ),
      );
    }
    quizData.otkoz();
    if (quizData.suroonuAlypKel() == '') {
      buttubu = true;
    }
    setState(() {});
  }

  List<Icon> iconkalar = [];

  int esepte = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttubu == true
                ? AlertDialog(
                    title: Text("Suroolor buttu"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          buttubu = false;
                          iconkalar = [];
                          quizData.kairaBashta();
                          setState(
                            () {},
                          );
                        },
                        child: const Text('Kayra bashta'),
                      ),
                    ],
                  )
                : Text(
                    quizData.suroonuAlypKel(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                userdinJoobu(true);
              },
              child: Container(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 10,
                  ),
                  child: Text(
                    'Tuura',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                userdinJoobu(false);
              },
              child: Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 46,
                    vertical: 10,
                  ),
                  child: Text(
                    'Tuura emes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: iconkalar,
            ),
          ],
        ),
      ),
    );
  }

  showAlert(BuildContext context) {
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    AlertDialog alert = AlertDialog(
      title: Text("Buttu"),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
