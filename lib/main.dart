import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          //color: Colors.pinkAccent,
          decoration: BoxDecoration(
            color: Colors.pinkAccent.withOpacity(0.5),
            border: Border.all(width: 2.0, color: Colors.pinkAccent),
            boxShadow: [
              BoxShadow(
                color: Colors.pink.withOpacity(0.1),
                offset: Offset(5.0, 5.0),
                blurRadius: 0.8,
                spreadRadius: 0.8


              )
            ]
          ),
          //alignment : Alignment.center,
          child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/guess_logo.png'),
                      Text(
                        'GUESS',
                        style: TextStyle(fontSize: 30.0, color: Color(0xFFFF0000)),
                      ),

                  ],
                ),
                  Text(
                    'the number',
                    style: TextStyle(fontSize: 20.0, color: Color(0xFFFF0000)),
                  ),
                  SizedBox(
                    height: 20.8,
                  ),
                  TextField(
                  ),

                  TextButton(
                  child: Text('Guess'),
                  onPressed: () {},
                ),



            ],
          )),
        ),
      ),
    );
  }
}
