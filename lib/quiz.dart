import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final question;
  
  final questionIndex;
  final VoidCallback handler;

  const Quiz({super.key,required this.question,required this.questionIndex, required this.handler});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
          Question(
            questionText: question[questionIndex]['questionText'] as String),

          ...(question[questionIndex]['answer'] as List<String>)
               .map((answerOptions){
                return Answer(selectHandler: handler, answerText:answerOptions, );
               }).toList()

        ]);
  }
}