import 'package:flutter/material.dart';
import 'package:learningdart/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      //-> Material Apps Build method is executed
      home: Scaffold(
        //-> Scaffolds build method is executed.
        body: GradientContainer(
          //-> GradientContainer's build method is executed.
          colors: [
            Color.fromARGB(255, 33, 5, 109),
            Color.fromARGB(255, 68, 21, 149)
          ],
        ),
      ),
    ),
  );
}
