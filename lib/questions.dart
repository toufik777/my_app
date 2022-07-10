import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final double fontsize = 28;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: fontsize),
        textAlign: TextAlign.center,
      ),
    );
  }
}
