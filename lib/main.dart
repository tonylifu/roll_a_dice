import 'package:flutter/material.dart';
import 'package:roll_a_dice/screens/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 5, 120),
      body: GradientContainer(
        colors: [
          Color.fromARGB(255, 24, 2, 62),
          Color.fromARGB(255, 110, 35, 239),
        ],
      ),
    ),
  ));
}
