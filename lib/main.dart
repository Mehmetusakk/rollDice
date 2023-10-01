import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: GradientContainer(
        color1: Color.fromARGB(212, 159, 13, 13),
        color2: Color.fromARGB(255, 30, 221, 0)),
  )));
}
