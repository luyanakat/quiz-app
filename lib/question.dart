import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;

  Question(this.question, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 70, top: 50),
      width: double.infinity,
      child: Text(
        question[questionIndex]['questionText'] as String,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
    );
  }
}
