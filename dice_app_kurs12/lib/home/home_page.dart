import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:developer' as math;

import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int solDice = 1;
  int onDice = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 239, 79),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text('DiceApp'),
        ),
      ),
      body: Center(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {});

                      final random = Random().nextInt(6) + 1;
                      solDice = random;
                    },
                    child: Image.asset('assets/images/dice$solDice.png'),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {});
                      final random = Random().nextInt(6) + 1;
                      onDice = random;
                      math.log('Sol jak basilip atat');
                    },
                    child: Image.asset('assets/images/dice$onDice.png'),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
