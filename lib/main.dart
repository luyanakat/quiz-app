// ignore_for_file: prefer_const_constructors

import 'package:clone_first_app/quiz.dart';
import 'package:flutter/material.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  String _textAnswer = '';

  void _changeQuestion(int score) {
    _totalScore = score + _totalScore;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _textAnswer = '';
    });
  }

  final _questions = [
    {
      'questionText': 'Năm sinh của chủ tịch Hồ Chí Minh là?',
      'answer': [
        {'text': '1890', 'score': 10},
        {'text': '1910', 'score': 0},
        {'text': '1872', 'score': 0},
        {'text': '1911', 'score': 0},
      ],
    },
    {
      'questionText': 'Châu lục nào lớn nhất thế giới?',
      'answer': [
        {'text': 'Châu Phi', 'score': 0},
        {'text': 'Châu Mỹ', 'score': 0},
        {'text': 'Châu Á', 'score': 10},
        {'text': 'Châu Âu', 'score': 0},
      ],
    },
    {
      'questionText': 'Hệ mặt trời có bao nhiêu hành tinh?',
      'answer': [
        {'text': '4 hành tinh', 'score': 0},
        {'text': '7 hành tinh', 'score': 10},
        {'text': '3 hành tinh', 'score': 0},
        {'text': '6 hình tinh', 'score': 0},
      ],
    },
    {
      'questionText': 'Chiến tranh thế giới thế giới thứ II kết thúc năm nào?',
      'answer': [
        {'text': '1954', 'score': 10},
        {'text': '1963', 'score': 0},
        {'text': '1970', 'score': 0},
        {'text': '1962', 'score': 0},
      ],
    },
    {
      'questionText': 'Cầu vồng có những màu đặc trưng nào?',
      'answer': [
        {'text': 'Đỏ, Cam, Vàng, Xám, Đen, Hồng, Tím', 'score': 0},
        {'text': 'Đỏ, Cam, Vàng, Lục, Lam, Tràm, Tím', 'score': 10},
        {'text': 'Cam, Xanh, Lục, Hồng, Xám, Trắng', 'score': 0},
        {'text': 'Cam, Hồng, Lục, Vàng, Tím, Xanh', 'score': 0},
      ],
    },
    {
      'questionText': 'Tia nào có khả năng đâm xuyên mạnh nhất?',
      'answer': [
        {'text': 'Tia X', 'score': 0},
        {'text': 'Tia Gamma', 'score': 10},
        {'text': 'Tia hồng ngoại', 'score': 0},
        {'text': 'Tia tử ngoại', 'score': 0},
      ],
    },
    {
      'questionText': 'Kim loại nào nặng nhất trong các kim loại sau?',
      'answer': [
        {'text': 'Bạc', 'score': 0},
        {'text': 'Vàng', 'score': 10},
        {'text': 'Sắt', 'score': 0},
        {'text': 'Đồng', 'score': 0},
      ],
    },
    {
      'questionText': 'Hiệp định Paris kí vào năm nào?',
      'answer': [
        {'text': '1973', 'score': 10},
        {'text': '1963', 'score': 0},
        {'text': '1970', 'score': 0},
        {'text': '1950', 'score': 0},
      ],
    },
    {
      'questionText':
          'Chai cocacola đầu tiên trên thế giới xuất hiện vào năm nào?',
      'answer': [
        {'text': '1896', 'score': 0},
        {'text': '1890', 'score': 10},
        {'text': '1875', 'score': 0},
        {'text': '1899', 'score': 0},
      ],
    },
    {
      'questionText': 'Mặt trời mọc hướng nào?',
      'answer': [
        {'text': 'Đông', 'score': 10},
        {'text': 'Tây', 'score': 0},
        {'text': 'Bắc', 'score': 0},
        {'text': 'Nam', 'score': 0},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cường First App'),
          backgroundColor: Colors.pink[400],
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex, _changeQuestion, _totalScore)
            : Result(_resetQuiz, _totalScore),
      ),
    );
  }
}
