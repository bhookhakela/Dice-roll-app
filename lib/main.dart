import 'package:flutter/material.dart';
import 'package:die_roll/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.black,
          Colors.black87,
        ),
      ),
    ),
  );
}
