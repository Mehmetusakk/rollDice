import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  GradientContainer({required this.color1, required this.color2, super.key});
  GradientContainer.purple({super.key})
      : color1 = const Color.fromARGB(255, 81, 183, 58),
        color2 = const Color.fromARGB(255, 81, 183, 58);

  final Color color1, color2;

  var activeImage = 'assets/images/dice-2.png';

  void rollDice() {
    activeImage = 'assets/images/dice-4.png';
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
