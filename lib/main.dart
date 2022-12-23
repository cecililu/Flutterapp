import 'package:flutter/material.dart';

// void main(){
//    runApp (Myapp());
//  }
void main() => runApp(Myapp());


class Myapp extends StatefulWidget {
    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyappState();
  }
  }
  

  
class MyappState extends State<Myapp>{
    var questionIndex=0;
    void answerQuestion(){
    setState((){
        questionIndex=questionIndex+1;
    });
   
    print("Answer chosen ok");
    print(questionIndex); 
  }
  
  @override
  Widget build(BuildContext ctx) {
    var question = ['what is your favourite  color?', 'Who is your Favourite person'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        
        body: Column(children: [
           Text(question[questionIndex]),
           ElevatedButton(child: Text("Aswew2"),onPressed: answerQuestion,),
           ElevatedButton(child: Text("Aswew3"),onPressed: (){},),
           ElevatedButton(child: Text("Aswew4"),onPressed: (){},),
          
        ]),
      ),
    );
  }
}
