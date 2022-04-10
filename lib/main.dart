import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
    print(_totalScore);
  }

  List _questions = [
    {
      'questionText': 'What Is Your Favourite Color?',
      'answerText': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 7},
        {'text': 'Orange', 'score': 4},
        {'text': 'Red', 'score': 1},
      ],
    },
    {
      'questionText': 'What Is Your Favourite Animal?',
      'answerText': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 7},
        {'text': 'Monkey', 'score': 4},
        {'text': 'Dog', 'score': 1},
      ],
    },
    {
      'questionText': 'What Is Your Favourite Snack?',
      'answerText': [
        {'text': 'Chips', 'score': 10},
        {'text': 'Chocolate', 'score': 7},
        {'text': 'Biscuits', 'score': 4},
        {'text': 'Buns', 'score': 1},
      ],
    },
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
