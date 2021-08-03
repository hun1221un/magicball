import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: GestureDetector(onTap: (){
          setState(() {
            number = Random().nextInt(5)+1;
          });
        },
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Image(image: AssetImage('images/ball$number.png')),
            ),
          ),
        ),
      ),
    );
  }
}
