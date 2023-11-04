import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
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
