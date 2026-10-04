import 'package:flutter/material.dart';
import 'package:roll_dice_app/GradientContainer.dart';

void main() {
  runApp(const RollDiceApp());
}

class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ROLL DICE',
      home: Scaffold(
        body: const GradientContainer(
          color1: Color.fromARGB(255, 11, 2, 83),
          color2: Color.fromARGB(255, 85, 4, 246),
        ),
      ),
    );
  }
}