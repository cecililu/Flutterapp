import 'package:flutter/material.dart';
import './question.dart';
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
class _MyappState extends State<Myapp>{
    var _questionIndex=0;
    void _answerQuestion(){
       setState((){
        _questionIndex=_questionIndex+1;
    });
   
    print("Answer chosen ok");
    print(_questionIndex); 
  }
  
  @override
  Widget build(BuildContext ctx) {
    var question = ['what is your favourite  color?', 'Who is your Favourite person'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        
        body: Column(children: [
           Question(questionText: question[_questionIndex], ),
           ElevatedButton(child: Text("Aswew2"),onPressed: _answerQuestion,),
           ElevatedButton(child: Text("Aswew3"),onPressed: (){},),
           ElevatedButton(child: Text("Aswew4"),onPressed: (){},),
          
        ]),
      ),
    );
  }
}
