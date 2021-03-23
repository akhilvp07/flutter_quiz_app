import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  String get resultPhrase {
    String phrase;
    if (totalScore <= 12) {
      phrase = "You are an awesome person!";
    } else if (totalScore <= 16) {
      phrase = "You are good!";
    } else if (totalScore <= 20) {
      phrase = "You are strange!";
    } else {
      phrase = "You are bad!";
    }

    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      resultPhrase,
      style: TextStyle(
        fontSize: 36,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ));
  }
}
