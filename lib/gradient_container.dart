import 'package:flutter/material.dart';
import 'package:learningdart/styled_text.dart';
//import 'package:learningdart/styled_text.dart';

class GradientContainer extends StatelessWidget{

  // GradientContainer( {key} ) {     //Here {} having inside are called as named parameters
  //   //doing some initialization work
  // }

  // GradientContainer({key}) : super(key: key)     //Here {} having inside are called as named parameters
    //doing some initialization work
  //const GradientContainer(this.gradientColors,{super.key});

   const GradientContainer({super.key, required this.colors});

   final List<Color> colors;

  /*context contains metadata about some useful information about this widget in the overall widget tree */

  void rollDice() {
    print("Dice rolled");
  }

@override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors, // Use the dynamic list of colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      //child: const StyledText("Hello shubh"),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset(
          'assets/images/dice-1.png', 
          width: 200,
          ),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: rollDice, 
          // style: TextButton.styleFrom(
          //   //padding: const EdgeInsets.only(top: 10, bottom: 10),
          //   padding: const EdgeInsets.all(10)
          // ),
          //style: TextButton.styleFrom(foregroundColor: Colors.white),
          child: 
            const Text('Roll Dice'),
          ) 
        ],)
        ),
      );
    }
  }