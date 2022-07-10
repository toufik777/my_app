import 'package:flutter/material.dart';
import 'package:my_app/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'question': 'what\'s your favorite animal',
      'answer': [
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Snake', 'score': 8},
        {'text': 'Elephant', 'score': 5}
      ],
    },
    {
      'question': 'what\'s your favorite color',
      'answer': [
        {'text': 'black', 'score': 9},
        {'text': 'white', 'score': 1},
        {'text': 'blue', 'score': 5}
      ],
    },
    {
      'question': 'what\'s your favorite IDE',
      'answer': [
        {'text': 'VS code', 'score': 3},
        {'text': 'IntelliJ IDE', 'score': 7},
        {'text': 'Eclipse', 'score': 9},
        {'text': 'PyCharm', 'score': 5}
      ],
    }
  ];
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });

    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
