import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
        home:
        Column(
          children: [
            Layout(),
            DiceRollScreen(),
            ],
        ) 
      ),
    );
  }
  
  class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color.fromARGB(255, 61, 8, 43),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 34, 1, 20),
            title: Text('Dice Roll')
          ),
       
      );
  }
}


class DiceRollScreen extends StatefulWidget {
  const DiceRollScreen({super.key});

  @override
  State<DiceRollScreen> createState() => _DiceRollScreenState();
}

class _DiceRollScreenState extends State<DiceRollScreen> {

int diceNumber = 1;
  void rollDice(){
    setState(() {
      diceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return 
   Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/dice$diceNumber.png'),
        TextButton(onPressed: rollDice,
        style:TextButton.styleFrom(foregroundColor: Colors.white),
        child: Text('Roll Dice'),
         ),
      ],
    );
  }
}