import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main(){
//    runApp (Myapp());
//  }
void main() => runApp(const Myapp());

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<Myapp> {
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex <= question.length) {
      print("We have more question");
    }
  }

  final question = const [
    {
      'questionText': 'What is your favourite color',
      'answer': ["Red", "greeen", "Blue", 'Black']
    },
    {
      'questionText': 'What is your favourite shoes',
      'answer': ["Jordan1", "forums", "NB 550"]
    },
  ];
  var _questionIndex = 0;

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Quiz App')),
        body: _questionIndex < question.length
            ? Quiz(
                question: question,
                questionIndex: _questionIndex,
                handler: _answerQuestion)
            : Column(
                children: [Text('Quiz Complete!'), Result()],
              ),
      ),
    );
  }
}
