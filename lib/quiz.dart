import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> question;
  
  final questionIndex;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final VoidCallback handler;

  Quiz({super.key,required this.question,required this.questionIndex, required this.handler});
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
          Question(
            questionText: question[questionIndex]['questionText'] as String),

          ...(question[questionIndex]['answer'] as List)
               .map((answerOptions){
                 var c=answerOptions[0];
                return Answer(selectHandler:()=> handler(c), answerText:answerOptions[0], );
               }).toList()

        ]);
  }
}