import 'package:flutter/material.dart';
import 'package:roll_a_dice/screens/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer({required this.colors, Key? key}) : super(key: key);

  const GradientContainer.purple({Key? key})
      : colors = const [
          Color.fromARGB(255, 24, 2, 62),
          Color.fromARGB(255, 110, 35, 239)
        ],
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
