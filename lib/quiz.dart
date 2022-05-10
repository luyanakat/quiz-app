// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function changeQuestion;
  final int totalScore;

  Quiz(this.question, this.questionIndex, this.changeQuestion, this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question, questionIndex),
        ...(question[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => changeQuestion(answer['score'] as int),
              answer['text'] as String); // take value of a list to list
        }).toList(),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 70),
          child: Text(
            'Your Score is: $totalScore',
            style: const TextStyle(fontSize: 17, color: Colors.pink),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
