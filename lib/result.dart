import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;
  final int totalScore;
  Result(this.resetQuiz, this.totalScore);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(30),
          color: Colors.pink[300],
          child: const Text(
            'End Question',
            style: TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 40, bottom: 40),
          padding: const EdgeInsets.all(40),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.pink,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'Your Score is: $totalScore/100',
            style: const TextStyle(fontSize: 18, color: Colors.pink),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.pink[300],
            padding: const EdgeInsets.all(15),
          ),
          onPressed: resetQuiz,
          child: const Text('Reset Quiz'),
        ),
      ],
    );
  }
}
