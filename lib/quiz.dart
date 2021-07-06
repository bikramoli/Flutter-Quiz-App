import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final questions;
  final number;
  final answer2;

  Quiz(
      {@required this.questions,
      @required this.answer2,
      @required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[number]['questionText'].toString(),
        ),
        ...(questions[number]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              () => answer2(answer['score']), answer['Text'].toString());
        }).toList()
      ],
    );
  }
}
