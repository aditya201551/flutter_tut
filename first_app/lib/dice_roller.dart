import 'dart:math';

import 'package:first_app/custom_text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceNumber = 1;
  Random rand = Random();

  void rollDice() {
    setState(() {
      diceNumber = rand.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/$diceNumber.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const CustomText("Roll Dice!"),
        )
      ],
    );
  }
}
