import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
   Question({super.key, required this.questionText});
  
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}