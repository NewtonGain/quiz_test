import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final VoidCallback questionFunction;
  final int questionIncrement;
  const Quiz(
      {required this.questionList,
      required this.questionFunction,
      required this.questionIncrement});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Question(questionList[questionIncrement]['question'] as String),
          ...(questionList[questionIncrement]['answers'] as List<String>)
              .map((e) => Answer(questionFunction, e))
              .toList(),
        ],
      ),
    );
  }
}
