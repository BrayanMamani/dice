import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF48CEAC),
        appBar: AppBar(
          backgroundColor: Color(0xFF48CEAC),
          title: Text('Dice'),
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

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random.secure().nextInt(6) + 1;
      rightDiceNumber = Random.secure().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                  onPressed: changeDiceFace,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: changeDiceFace,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
