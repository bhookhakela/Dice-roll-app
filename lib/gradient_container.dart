import 'package:die_roll/dice_roll.dart';
import 'package:flutter/material.dart';

const beginAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.c1, this.c2, {super.key});
  final Color c1;
  final Color c2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [c1, c2],
          begin: beginAlign,
          end: endAlign,
        ),
      ),
      child: const Center(
        child: Dice_roller(),
      ),
    );
  }
}
