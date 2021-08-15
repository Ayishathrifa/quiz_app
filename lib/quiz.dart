import 'package:flutter/material.dart';

import 'question.dart';
// ignore: directives_ordering
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        // ignore: cast_nullable_to_non_nullable
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            // ignore: always_specify_types
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
