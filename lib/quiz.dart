import 'package:flutter/material.dart';
import 'package:flutter_course_quiz_app/answer.dart';
import 'package:flutter_course_quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionSelected;
  final void Function() response;

  const Quiz({
    super.key,
    required this.questions,
    required this.questionSelected,
    required this.response
  });

  bool get hasSelectedQuestion {
    return questionSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers = hasSelectedQuestion
        ? questions[questionSelected]['answers'] as List<String>
        : [];

    return Column(
      children: <Widget> [
        Question(questions[questionSelected]['text'].toString()),
        ...answers.map((option) => Answer(option, response))
      ],
    );
  }
}