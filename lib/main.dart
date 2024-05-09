import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget{

  // GradientContainer( {key} ) {     //Here {} having inside are called as named parameters
  //   //doing some initialization work
  // }

  // GradientContainer({key}) : super(key: key)     //Here {} having inside are called as named parameters
    //doing some initialization work
  const GradientContainer({super.key});
  
  /*context contains metadata about some useful information about this widget in the overall widget tree */
  @override
  Widget build(context) { //build automatically receives a value for the context parameter
      return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 203, 6, 238),
                Color.fromARGB(255, 2, 25, 43)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          child: const Center(
            child: Text('Hello world', style: TextStyle(color: Colors.amber, fontSize: 28.0),),
          ),
        );
  }
}