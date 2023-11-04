import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 5, 120),
        body: GradientContainer(
          /* Rainbow colors */
          colors: [
            Colors.black,
            Colors.red,
            Colors.orange,
            Colors.yellow,
            Colors.green,
            Colors.blue,
            Colors.indigo,
            Colors.purple,
            Colors.black,
          ],
        ),
      ),
    ),
  );
}
