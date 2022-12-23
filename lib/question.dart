import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question({super.key, required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        color: Color.fromARGB(124, 45, 75, 5),
        child: Text(
          questionText,
          style: const TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ));
  }
}
