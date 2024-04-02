import "package:flutter/material.dart";

class CustomText extends StatelessWidget {
  final String text;
  const CustomText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20.5,
        color: Colors.white,
      ),
    );
  }
}
