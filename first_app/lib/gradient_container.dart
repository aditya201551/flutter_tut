import "package:first_app/dice_roller.dart";
import "package:flutter/material.dart";

class GradientContainer extends StatelessWidget {
  final List<Color> c;
  const GradientContainer(this.c, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: c,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
