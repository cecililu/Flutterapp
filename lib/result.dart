import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int score;

  const Result({super.key,required this.score});
  @override
    Widget build(BuildContext context) {
      return Container(child: Center(child: Text("You Scored ${score}"),));
    }
}