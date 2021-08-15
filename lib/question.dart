import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // ignore: prefer_const_constructors_in_immutables
  // ignore: use_key_in_widget_constructors
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.all(20),
      child: Text(
        // ignore: prefer_interpolation_to_compose_strings
        '\n' + questionText + '\n',
        // ignore: prefer_const_constructors
        style: TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}
