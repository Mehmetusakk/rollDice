import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = 'assets/images/dice-2.png';
  var randomdeger1 = 1;
  var randomdeger2 = 1;
  var toplam = 0;

  void rollDice() {
    setState(() {
      randomdeger1 = Random().nextInt(6) + 1;
      randomdeger2 = Random().nextInt(6) + 1;
      toplam = randomdeger1 + randomdeger2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/dice-$randomdeger1.png',
              width: 200,
            ),
            Image.asset(
              'assets/images/dice-$randomdeger2.png',
              width: 200,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {
            rollDice();
          },
          child: Text('ROLL'),
          style: TextButton.styleFrom(foregroundColor: Colors.white),
        ),
        Text(
          'Toplam Sayı = ' + toplam.toString(),
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
        )
      ],
    );
  }
}
