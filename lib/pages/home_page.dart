import 'package:flutter/material.dart';
import 'package:happy_valentines/config/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[900],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 220,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage('assets/images/balloons.jpg'))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const <Widget>[
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: 200,
                                child: Text(
                                  happyValentines,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'LadylikeBB',
                                      fontSize: 45,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            message,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'LadylikeBB',
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 300,
                                height: 200,
                                child: Image.asset(
                                  'assets/images/work.jpg',
                                  fit: BoxFit.contain,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
