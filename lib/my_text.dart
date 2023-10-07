// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;

  const MyText({
    Key? key,
    required this.text,
    required this.textSize,
    FontWeight fontWeight = FontWeight.normal,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: textSize, fontWeight: FontWeight.normal, color: textColor),
    );
  }
}
