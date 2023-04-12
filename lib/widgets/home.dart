import 'package:flutter/material.dart';

import 'dart:math';
import 'package:dice_roller/widgets/text_style_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  rollDice() {
    Random random = new Random();
    int randomNumber = random.nextInt(6);

    print(randomNumber);
  }

  @override
  Widget build(BuildContext context) {
    const testNumber = 3;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 62, 15, 142),
            Color.fromARGB(255, 116, 88, 164)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/img/dice-" + testNumber.toString() + ".png",
            width: 200,
          ),
          const TextStyleWidget('test'),
          OutlinedButton(
            onPressed: rollDice,
            child: const Text('Lancer le dé'),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(15),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
          )
        ],
      )),
    );
  }
}
