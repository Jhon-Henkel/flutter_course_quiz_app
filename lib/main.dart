import 'package:flutter/material.dart';
import 'package:flutter_course_quiz_app/quiz.dart';
import './result.dart';

main() => runApp(const QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _questionSelected = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'text': 'Qual é a sua cor favorita?',
      'answers': [
        {'answer': 'Preto', 'score': 10},
        {'answer': 'Vermelho', 'score': 5},
        {'answer': 'Verde', 'score': 3},
        {'answer': 'Branco', 'score': 1}
      ],
    },
    {
      'text': 'Qual é o seu animal favorito?',
      'answers': [
        {'answer': 'Coelho', 'score': 5},
        {'answer': 'Cobra', 'score': 3},
        {'answer': 'Elefante', 'score': 1},
        {'answer': 'Leão', 'score': 10}
      ],
    },
    {
      'text': 'Qual é o seu instrutor favorito?',
      'answers': [
        {'answer': 'Maria', 'score': 4},
        {'answer': 'João', 'score': 7},
        {'answer': 'Leo', 'score': 1},
        {'answer': 'Pedro', 'score': 3}
      ],
    },
  ];

  void _response(int score) {
    if (! hasSelectedQuestion) {
      return;
    }
    setState(() {
      _questionSelected++;
      _totalScore += score;
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
          : Result(_totalScore)
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
