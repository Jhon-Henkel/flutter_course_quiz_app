import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  const Result(this.totalScore, {super.key});

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
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}