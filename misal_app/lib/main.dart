import 'package:flutter/material.dart';
import 'package:misal_app/ekinchi_bet.dart';

void main() {
  runApp(const Adam());
}

class Adam extends StatelessWidget {
  const Adam({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void koshuu() {
    setState(() {});
    san = san + 1; // uzun jolu
    // san++; kyska jolu
  }

  void kemituu() {
    if (san == 0) {
      san = 0;
    } else {
      setState(() {});
      san = san - 1;
    }
  }

  int san = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Тапшырма 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(130, 83, 82, 82),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.07,
              child: Center(
                child: Text(
                  "San: $san",
                  style: TextStyle(
                    color: Color.fromARGB(221, 16, 4, 4),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0)),
                    minimumSize: Size(40, 50), //////// HERE
                  ),
                  onPressed: kemituu,
                  child: Icon(
                    Icons.remove,
                    color: Color.fromARGB(255, 233, 225, 225),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.0)),
                    minimumSize: Size(40, 50), //////// HERE
                  ),
                  onPressed: koshuu,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EkinchiB(
                sanKelsin: san,
              ),
            ),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
