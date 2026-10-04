import 'dart:math';
import 'package:flutter/material.dart';

class roll_dice extends StatefulWidget {
  const roll_dice({super.key});

  @override
  State<roll_dice> createState() => _roll_diceState();
} 

class _roll_diceState extends State<roll_dice> {
  var faceNumber = 1;
  var buttonColor = const Color.fromARGB(255, 249, 247, 247);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        Image.asset('Assets/dice_images/dice-$faceNumber.png', width: 200, height: 200),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            backgroundColor: buttonColor,
            animationDuration: const Duration(milliseconds: 100),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
          ),
          onPressed: () async { 
            // Phase 1: Fade IN to Red and roll the dice
            setState(() {
              buttonColor = const Color.fromARGB(255, 246, 4, 4); 
            
              var temp = faceNumber;
              while(true){
                if(temp != faceNumber) break;
                faceNumber = Random().nextInt(6) + 1;
              }
            });

            // Phase 2: Pause the function for 2 seconds to let the user see the red button
            await Future.delayed(const Duration(milliseconds: 50));

            // Phase 3: Fade OUT back to the default color
            setState(() {
              buttonColor = const Color.fromARGB(255, 220, 220, 220);
            });
          },
          child: const Text('Roll Dice',style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic, color: Color.fromARGB(255, 41, 2, 181)))
        ),
      ], //children
    );
  }
}