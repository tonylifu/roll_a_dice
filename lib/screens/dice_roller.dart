import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 6;
  var currentSecondDiceRoll = 6;
  final random = Random();

  void rollDice() {
    setState(() {
      currentDiceRoll = random.nextInt(6) + 1;
      currentSecondDiceRoll = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 150,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/images/dice-$currentSecondDiceRoll.png',
              width: 150,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
