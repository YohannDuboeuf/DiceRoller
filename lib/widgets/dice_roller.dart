import 'package:flutter/material.dart';

import 'dart:math';
import './text_style_widget.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDiceRoll = 2;

  rollDice() {
    setState(() {
      currentDiceRoll = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/img/dice-$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        const TextStyleWidget('test'),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          child: Text('Lancer le dé'),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(15),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
        )
      ],
    );
  }
}
