import 'package:counter_app/pages/secont/ekinchi_bet.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int san = 20;
 





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Counter App',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xffBDBDBD),
                borderRadius: BorderRadius.all(Radius.circular(12.0) //
                    ),
              ),
              width: 294,
              child: Center(
                child: Text(
                  'San: $san',
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  focusColor: Colors.yellow,
                  hoverColor: Colors.yellow,
                  onTap: kemituu,
                  child: Container(
                    decoration: const BoxDecoration(
                      // color: Color(0XFF005EA6),
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(Radius.circular(8.0) //
                          ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: const Center(
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 00),
                          child: Icon(
                            Icons.remove,
                            color: Color(0xffffffff),
                            size: 40,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: koshuu,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0XFF005EA6),
                      borderRadius: BorderRadius.all(Radius.circular(8.0) //
                          ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: const Center(
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 00),
                          child: Icon(
                            Icons.add,
                            color: Color(0xffffffff),
                            size: 40,
                          )),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EkinchiBet(san: san),
                  ),
                );
              },
              child: const Icon(
                Icons.navigate_next,
                size: 45,
              ),
            )
          ],
        ),
      ),
    );
  }
}
