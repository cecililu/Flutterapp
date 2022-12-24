import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  const Answer({super.key, required this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
            child: Text('sa'),
            onPressed:selectHandler,
          ),
    );
  }
}
