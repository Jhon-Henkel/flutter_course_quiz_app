import 'package:flutter/material.dart';
import 'package:flutter_course_quiz_app/quiz.dart';
import './result.dart';

main() => runApp(const QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _questionSelected = 0;
  final _questions = const [
    {
      'text': 'Qual é a sua cor favorita?',
      'answers': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'text': 'Qual é o seu animal favorito?',
      'answers': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'text': 'Qual é o seu instrutor favorito?',
      'answers': ['Maria', 'João', 'Leo', 'Pedro'],
    },
  ];

  void _response() {
    if (! hasSelectedQuestion) {
      return;
    }
    setState(() {
      _questionSelected++;
    });
  }

  bool get hasSelectedQuestion {
    return _questionSelected < _questions.length;
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: hasSelectedQuestion
          ? Quiz(questions: _questions, questionSelected: _questionSelected, response: _response)
          : const Result()
      )
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
