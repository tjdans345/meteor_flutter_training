import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String textContent;
  final double textFontSize;
  final Color textColor;
  final FontWeight textFontWeight;

  const TextComponent(
      {required this.textContent,
      required this.textFontSize,
      required this.textColor,
      required this.textFontWeight,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
      style: TextStyle(
          fontSize: textFontSize, color: textColor, fontWeight: textFontWeight),
    );
  }
}
