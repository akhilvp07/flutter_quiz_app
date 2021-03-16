import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite colour?',
        'answers': ['Red', 'Green', 'Blue', 'Green'],
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Lion', 'Tiger', 'Bear', 'Deer'],
      },
      {
        'questionText': 'What\'s your favourite food?',
        'answers': ['Rice', 'Noodles', 'Burger', 'Cake'],
      },
    ];
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text('My First App!'),
      ),
      body: Column(
        children: [
          Question(
            questions[_questionIndex]['questionText'],
          ),
          //Answers
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    );
    return MaterialApp(
      home: scaffold,
    );
  }
}
