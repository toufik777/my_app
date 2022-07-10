import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
