import 'package:flutter/material.dart';
import 'package:learningdart/dice_roller.dart';
// import 'package:learningdart/styled_text.dart';
//import 'package:learningdart/styled_text.dart';

class GradientContainer extends StatelessWidget {
  //const GradientContainer(this.gradientColors,{super.key});

  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

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
      child: const Center(child: DiceRoller()),
    );
  }
}
