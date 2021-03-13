import 'package:flutter/material.dart';
import 'main.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  String  questions ;

   Question(this.questions); // constructor
  @override
  Widget build(BuildContext context) {
 return Container(
   width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.all(10.0),
            child: Column(children: <Widget>[
              Text(questions, style: TextStyle(fontSize: 40,color: b,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,)
            ],)
          );
  }
}