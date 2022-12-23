import 'package:flutter/material.dart';

// void main(){
//    runApp (Myapp());
//  }
void main() => runApp(Myapp());

// ignore: use_key_in_widget_constructors
class Myapp extends StatelessWidget {
  void answerQuestion(){
   print("Answer chosen ok");
  }
  
  @override
  Widget build(BuildContext ctx) {
    var question = ['what is your fave color', 'Who is your Favourite person'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('FTX bitcoin')),
        
        body: Column(children: [
          const Text('Here are your question?'),
           
           ElevatedButton(child: Text("Aswew2"),onPressed: answerQuestion,),
           ElevatedButton(child: Text("Aswew3"),onPressed: answerQuestion,),
           ElevatedButton(child: Text("Aswew4"),onPressed: answerQuestion,),
          
        ]),
      ),
    );
  }
}
