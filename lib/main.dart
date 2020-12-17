import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              changeBoth();
            },
            child: Image.asset(
              "images/dice$leftDiceNumber.png",
            ),
          )),
          Expanded(
              child: FlatButton(
            onPressed: () {
              changeBoth();
            },
            child: Image.asset(
              "images/dice$rightDiceNumber.png",
            ),
          ))
        ],
      ),
    );
  }

  void changeBoth() {
    setState(() {
      leftDiceNumber = returnRandBetween1and6();
      rightDiceNumber = returnRandBetween1and6();
    });
  }

  int returnRandBetween1and6() {
    var min = 1;
    var max = 6;
    var rn = new Random();
    return min + rn.nextInt(max - min) + 1;
  }
}
