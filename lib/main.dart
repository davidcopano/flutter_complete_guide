import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyCoolAppState();
}

class _MyCoolAppState extends State<MyCoolApp> {
  var questions = [
    'What\'s your favourite color?',
    'What\'s your favourite animal?',
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex == (questions.length - 1)) {
      print('No more questions available!');
    } else {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            // aquí usamos el widget Question que hemos
            // creado en lib/question.dart
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
