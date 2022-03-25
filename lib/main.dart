import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text('Dice Roller App'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lDN = 1;
  int rDN = 1;

  void randomizeDice(){
    lDN = Random().nextInt(6) + 1;
    rDN = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                 randomizeDice();

                });
              },
              child: Image.asset("images/dice$lDN.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  randomizeDice();
                });
              },
              child: Image.asset("images/dice$rDN.png"),
            ),
          ),
        ],
      ),
    );
  }
  }



