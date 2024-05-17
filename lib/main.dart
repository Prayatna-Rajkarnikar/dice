import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
       MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: const Text('Dice'),
            backgroundColor: Colors.red,
          ),
          body: Dicepage(),
        ),
      ));
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeNumber(){  //A Function
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) +1;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeNumber();
                },
                child: Image.asset('images/dice$leftDiceNumber.jpg')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeNumber();
                },
                child: Image.asset('images/dice$rightDiceNumber.jpg')), // $ = String Interpulation
          ),
        ],
      ),
    );
  }
}






