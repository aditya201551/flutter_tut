import 'package:flutter/material.dart';
import "package:first_app/gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            Color.fromARGB(255, 148, 60, 192),
            Color.fromARGB(255, 189, 121, 232),
          ],
        ),
      ),
    ),
  );
}
