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
  int _score = 0;
  void _handler(int m) {
                  _score = _score + 0;
                  setState(() {
                    _questionIndex = _questionIndex + 1;
                  });

                  if (_questionIndex <= question.length) {
                    print("We have more question");
                  }
                }
  final question = const [
    {
      'questionText': 'What is capital of Nepal?',
      'answer': [
        ["Kathmandu", 100],
        ["Delhi", 0],
        ["Thimpu", 0],
        ['Six', 0]
      ]
    },
    {
      'questionText': 'How many states are there in Nepal',
      'answer': [
        ["Ten", 0],
        ["Eight", 0],
        ["Seven", 100],
        ['Six', 0]
      ]
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
                handler: _handler,
                )
            : Column(
                children: [Text('Quiz Complete!'), Result(score: _score)],
              ),
      ),
    );
  }
}
