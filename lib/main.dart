import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main(){
//    runApp (Myapp());
//  }
void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<Myapp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print("Answer chosen ok");
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    var question = [
      {
        'questionText': 'What is your favourite color',
        'answer': ["Red", "greeen", "Blue"]
      },
      {
        'questionText': 'What is your favourite shoes',
        'answer': ["Jordan1", "forums", "NB 550"]
      },
    ];

    // var answer2=["CECIL","CECILU","CECILi"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: Column(children: [
          Question(
            questionText: question[_questionIndex],
          ),
          Answer(selectHandler: _answerQuestion),
          Answer(selectHandler: _answerQuestion),
          Answer(selectHandler: _answerQuestion),
        ]),
      ),
    );
  }
}
