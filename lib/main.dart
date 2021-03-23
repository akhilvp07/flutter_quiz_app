import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {
          'text': 'Red',
          'score': 5,
        },
        {
          'text': 'Green',
          'score': 2,
        },
        {
          'text': 'Blue',
          'score': 7,
        },
        {
          'text': 'Black',
          'score': 10,
        }
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {
          'text': 'Lion',
          'score': 5,
        },
        {
          'text': 'Tiger',
          'score': 7,
        },
        {
          'text': 'Fox',
          'score': 10,
        },
        {
          'text': 'Deer',
          'score': 3,
        },
      ],
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {
          'text': 'Rice',
          'score': 5,
        },
        {
          'text': 'Noodles',
          'score': 7,
        },
        {
          'text': 'Pizza',
          'score': 8,
        },
        {
          'text': 'Cake',
          'score': 4,
        },
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text('My First App!'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore),
    );
    return MaterialApp(
      home: scaffold,
    );
  }
}
