import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(this.questions, this.answerQuestion, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answerText'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
