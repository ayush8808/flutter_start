import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function AnsQues;
  final int questionIndex;
  final List<Map<String, Object>> question;

  Quiz(
      {required this.AnsQues,
      required this.question,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'].toString(),
        ),
        ...(question[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => AnsQues(answer['score']), answer['text'].toString());
        }).toList()
      ],
    );
  }
}
