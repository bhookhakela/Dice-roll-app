import 'package:flutter/material.dart';
import 'dart:math';

final random_obj = Random();

class Dice_roller extends StatefulWidget {
  const Dice_roller({super.key});

  @override
  State<Dice_roller> createState() => _Dice_rollerState();
}

class _Dice_rollerState extends State<Dice_roller> {
  var die_no = 1;
  void rolldice() {
    setState(() {
      die_no = random_obj.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$die_no.png",
          width: 150,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const Text(
            "Roll Dice",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }
}
