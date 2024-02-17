import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _questionSelected = 0;

  void _responder() {
    setState(() {
      _questionSelected++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: <Widget> [
            Question(questions[_questionSelected]),
            Answer('Resposta 1', _responder),
            Answer('Resposta 2', _responder),
            Answer('Resposta 3', _responder),
          ],
        ),
      )
    );
  }
}

class QuizApp extends StatefulWidget {

  _QuizAppState createState() {
    return _QuizAppState();
  }
}
