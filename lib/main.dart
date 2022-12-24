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
  final question =const [
      {
        'questionText': 'What is your favourite color',
        'answer': ["Red", "greeen", "Blue",'Black']
      },
      {
        'questionText': 'What is your favourite shoes',
        'answer': ["Jordan1", "forums", "NB 550"]
      },
    ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if(_questionIndex< question.length){
       print("We have more question");
    }
  }

  @override
  Widget build(BuildContext ctx) {
    

    // var answer2=["CECIL","CECILU","CECILi"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: _questionIndex<question.length ? Column(
          children: [
          Question(
            questionText: question[_questionIndex]['questionText'] as String),

          ...(question[_questionIndex]['answer'] as List<String>)
               .map((answerOptions){
                return Answer(selectHandler: _answerQuestion, answerText:answerOptions, );
               }).toList()

        ]):Center(child: Text('Quiz Complete!'),),

        ),
      );
  }
}
