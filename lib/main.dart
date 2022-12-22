import 'package:flutter/material.dart';
// void main(){
//    runApp (Myapp());
//  }

void main() => runApp(Myapp());

// ignore: use_key_in_widget_constructors
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('FTX bitcoin')),
        body: Text('This is my app body'),
      ),
    );
  }
}
