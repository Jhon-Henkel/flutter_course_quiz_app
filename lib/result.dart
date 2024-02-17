import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.totalScore, this.restartQuiz, {super.key});
  final int totalScore;
  final Function() restartQuiz;

  String get resultPhrase {
    if (totalScore < 8) {
      return 'Parabéns!';
    } else if (totalScore < 12) {
      return 'Você é bom!';
    } else if (totalScore < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        TextButton(
          onPressed: restartQuiz,
          child: const Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 18,
            )
          )
        )
      ],
    );
  }
}