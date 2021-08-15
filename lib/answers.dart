import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;

  // ignore: prefer_const_constructors_in_immutables
  // ignore: use_key_in_widget_constructors
  // ignore: prefer_const_constructors_in_immutables
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.black,
          // ignore: prefer_const_constructors
          padding: EdgeInsets.all(20),
          primary: Colors.amber,
          // ignore: prefer_const_constructors
          shape: StadiumBorder(),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
