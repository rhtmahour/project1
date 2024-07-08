import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  //Function definition
  void rollDice() {
    // 0 to 5
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      //activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              //padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              backgroundColor: Colors.black), //rolDice separate function
          child: const Text(
            'Roll Dice',
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
