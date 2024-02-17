import 'package:flutter/material.dart';
import './question.dart';

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
              ElevatedButton(
                  onPressed: _responder,
                  child: const Text('Resposta 1')
              ),
              ElevatedButton(
                  onPressed: _responder,
                  child: const Text('Resposta 2')
              ),
              ElevatedButton(
                  onPressed: _responder,
                  child: const Text('Resposta 3')
              ),
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
