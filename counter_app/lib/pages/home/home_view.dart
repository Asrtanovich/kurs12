import 'package:counter_app/pages/home/cubit/home_cubit.dart';
import 'package:counter_app/pages/secont/ekinchi_bet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
                child: BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    return Text(
                      'San: ${state.san}',
                      style: const TextStyle(fontSize: 25),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      focusColor: Colors.yellow,
                      hoverColor: Colors.yellow,
                      onTap: context.read<HomeCubit>().kemituu,
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
                      onTap: context.read<HomeCubit>().koshuu,
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
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        EkinchiBet(san: context.read<HomeState>().san),
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
