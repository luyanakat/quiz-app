import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback changeQuestion;
  final String answerText;

  Answer(this.changeQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20, right: 25, left: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.pink[300],
          padding: const EdgeInsets.all(18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25), // <-- Radius
          ),
        ),
        onPressed: changeQuestion,
        child: Text(answerText),
      ),
    );
  }
}
