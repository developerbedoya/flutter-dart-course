import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget  {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int _currentDiceRollNumber = 2;
  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$_currentDiceRollNumber.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text('Roll Dice')
        ),
      ],
    );
  }

  void rollDice() {
    setState(() {
      _currentDiceRollNumber = _random.nextInt(6) + 1;
    });
  }
}