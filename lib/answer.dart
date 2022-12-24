import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer({super.key, required this.selectHandler,required this.answerText,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(),
            child: Text(answerText),
            onPressed:selectHandler,
          ),
    );
  }
}
